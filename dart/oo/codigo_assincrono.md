[Dart](https://github.com/leofds/flutter-class/blob/master/dart/README.md)

# Código assíncrono

Algumas funções podem demorar para retornar (Ex. ao solicitar dados de um servidor). Se o programa ficar esperado o retorno da função o app ficará travado, sem responder ao usuário. Isso cria uma péssima experiência de uso.\
Para solucionar este problema podemos declarar uma função como assíncrona através da keyword **async**.

```dart
autenticar() async {
  print('Autenticando...');
}
```

Dessa forma, a função retorna imediatamente após a chamada, iniciando uma execução em paralelo para o bloco de código da função.

## Aguardando o fim da execução

Através do keyword **await** o programa pode aguardar o fim da execução da função assíncrona para continuar, porém o await só pode ser usado em uma função assíncrona.

```dart
void main(List<String> args) async {
  await autenticar();
  print('Fim');
}
```

```dart
autenticar() async {
  await Future.delayed(const Duration(seconds: 1));
  print('Autenticado!');
}
```

## Retorno em função async

É obrigatório o uso da classe Future como retorno da função async.\
**Future** representa uma computação que não é concluida imediatamente.

```dart
Future<bool> autenticar() async {
  await Future.delayed(const Duration(seconds: 1));
  return true;
}
```

Há duas formar de obter o retorno da função async.

**#1 com await que espera o fim da execução**

```dart
bool autenticado = await autenticar();
```

**#2 com then**

```dart
autenticar().then((value) {
  print('Autenticado = $value');
});
```

Utilize catchError para capturar um exceção lançada na função assíncrona.

```dart
autenticar().then((value) {
  print('Autenticado = $value');
}).catchError((e) {
  print(e);
});
```
