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
