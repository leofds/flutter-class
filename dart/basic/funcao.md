[Dart](https://github.com/leofds/flutter-class/blob/master/dart/dart.md)

# Funções

Uma função é um outro bloco de código, que pode ser executado através do nome da função.

```dart
void main() {
  hello();
}

void hello() {
  print('Olá');
}
```

## Passagem de parâmetros

Podem ser enviados parâmetros para a função

```dart
void main() {
  mostrar('Mariana', 20);
}

void mostrar(String nome, int idade) {
  print('Olá $nome, você tem $idade anos');
}

// Resultado
// Olá Mariana, você tem 20 anos
```

## Retornando valores

Uma função pode retornar valores. É necessário informar antes do nome da função qual o ipo de dado que será retornado.

```dart
void main() {
  int resultado = soma(10, 20);
  print(resultado);
}

int soma(int valor1, int valor2) {
  return valor1 + valor2;
}

// Resultado 
// 30
```

## Retornando múltiplos valores

Uma função pode retornar multiplos valores.

```dart
void main() {
  final (lat, long) = getGeo('Blumenau');
  print('Current location: $lat, $long');
}

(double, double) getGeo(String city) {
  var lat = -26.8679949;
  var long = -49.0514103;
  return (lat, long);
}

// Resultado
// Current location: -26.8679949, -49.0514103
```

Acessando de forma posicional

```dart
final geo = getGeo('Blumenau');
print('Current location: ${geo.$1}, ${geo.$2}');
```

---

## Parâmetros opcionais posicionais

Utiliza [ ] na lista de parâmetros.

```dart
void main() {
  mostrar("Maria");
  mostrar("Maria", 20);
}

void mostrar([String nome = "", int idade = 0]) {
  print('Olá $nome com $idade anos');
}

// Resultado
// Olá Maria com 0 anos
// Olá Maria com 20 anos
```

## Parâmetros opcionais nomeados

Utiliza { } na lista de parâmetros.

```dart
void main() {
  mostrar(nome: 'Mariana');
  mostrar(idade: 20, nome: 'Mariana');
}

void mostrar({String nome = "", int idade = 0}) {
  print('Olá $nome com $idade anos');
}

// Resultado
// Olá Maria com 0 anos
// Olá Maria com 20 anos
```

## Parâmetros obrigatórios nomeados

Utiliza { } na lista de parâmetros e a palavra **required**.

```dart
void main() {
  mostrar(nome: 'Mariana', idade: 20);
}

void mostrar({required String nome, required int idade}) {
  print('Olá $nome com $idade anos');
}

// Resultado
// Olá Maria com 20 anos
```
