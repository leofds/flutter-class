[Dart](https://github.com/leofds/flutter-class/blob/master/dart/dart.md)

# Laço de repetição Faça Enquanto (do while)

Executa o bloco de código entre { } enquanto a condição entre () for true.

A principal diferença do **do while** para o **while**, é que, é garantido que o bloco de código será executado pelo menos uma vez.

```dart
int contador = 20;
do {
  print('Contador $contador');
  contador++;
} while (contador < 5);
// Resultado 
// Contador 20
```
