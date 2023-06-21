[Dart](https://github.com/leofds/flutter-class/blob/master/dart/dart.md)

# Operadores bit a bit

Os operadores bit a bit truncam seus operandos para inteiros de 32 bits quando compilados para JavaScript

| Operador | Descrição |
| -------- | --------- |
| & |E (em inglês AND) |
| \| | Ou (em inglês OR) |
| ^| Ou exclusivo (em inglês XOR) |
| ~ | Complemento (1 torna-se 0 e vice-versa) |
| << | Rotaciona à esquerda |
| >> | Rotaciona à direita |
| >>> | Rotaciona à direita sem sinal |

```dart
void main() {
  int x = 9;
  int y = 3;
  
  print(x & y);    // 1
  print(x | y);    // 11
  print(x ^ y);    // 10
  print(~x);       // web = 4294967286, windows = -10
  print(y << 1);   // 6
  print(y >> 1);   // 1
}
```
