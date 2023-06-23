[Dart](https://github.com/leofds/flutter-class/blob/master/dart/dart.md)

# Exeção

É um problema que ocorre durante a execução do programa. Quando uma exceção ocorre o fluxo normal do programa é interrompido e é encerrado de forma anormal.\

Toda a exceção é filha da classe **Exception** e deve ser tratada (capturada) para evitar que o app seja encerrado abruptamente

## try catch

O código abaixo causa uma exceção chamada FormatException porque não é possível converter ‘abc’ para um número.

```dart
try {
  print(int.parse('abc'));  // causa FormatException
} catch (e) {
  print(e);
}
```

Com o try haverá uma tentativa de executar o bloco de código, se ocorrer uma exceção o catch será executado.

## Capturando uma exceção específica

Dividir um valor int por zero causa uma exceção **IntegerDivisionByZeroException** que está marcada como **deprecated**, ou seja em uma versão futura do dart esta classe não existirá mais, devendo ser substituída por **UnsupportedError**.

```dart
try {
  print(100 ~/ 0); // Não é possível dividir por zero
  print(int.parse('abc'));
} on UnsupportedError catch (err) {
  print(err.message);
} catch (e) {
  print(e);
}
```

## finally

Bloco de código sempre executado ao final do try catch independente se ocorrer ou não uma exceção.

```dart
try {
  print('Do something');
  return;   // Primeiro executa o finally
} catch (e) {
  print(e);
} finally {
  print('Fim');
}
```

## Lançando uma exceção throw

Podemos causar/lançar uma exceção propositalmente.

```dart
void main(List<String> args) {
  try {
    executa();
  } on UnsupportedError catch (e) {
    print(e.message);
  }
}
```

```dart
void executa() {
  throw UnsupportedError('Algo deu errado');
}
```

## Criando uma Exceção customizada

```dart
class CustomException implements Exception {
  String cause;
  CustomException(this.cause);
}
```

```dart
void main(List<String> args) {
  try {
    throw CustomException('Algo deu errado');
  } on CustomException catch (e) {
    print(e.cause);
  }
}
```
