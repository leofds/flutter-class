[Dart](https://github.com/leofds/flutter-class/blob/master/dart/dart.md)

# Modificador late

Indica que a variável será inicializada posteriormente, durante a primeira leitura ou em um construtor.

```dart
class Example {
  late String something = begin();

  String begin() {
    print('load');
    return "hello";
  }
}
```

```dart
void main(List<String> args) {
  Example example = Example();
  print('Start');
  print(example.something);
}
```
