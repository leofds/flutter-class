[Dart](https://github.com/leofds/flutter-class/blob/master/dart/README.md)

# Operador ? (Null-aware)

Utilizando o operador null-aware o método não será chamado se o objeto estiver nulo.

```dart
void main(List<String> args) {
  Carro? carro;
  carro?.ligar();
}
```
