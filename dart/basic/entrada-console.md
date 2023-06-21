[Dart](https://github.com/leofds/flutter-class/blob/master/dart/dart.md)

# Entrada de dados pela console

A função sdtin.readLineSync()! do pacote dart:io retorna o texto digitado pelo usuário no terminal.
Ao chamar esta função o programa aguarda até que o usuário digite algo no terminal e aperte ENTER.

```dart
import 'dart:io';

void main(List<String> args) {
  print("Informe seu nome:");
  String nome = stdin.readLineSync()!;
  print('Bem vindo $nome');
}
```
