[Dart](https://github.com/leofds/flutter-class/blob/master/dart/README.md)

# Factory

Use a palavra chave factory para implementar um construtor que nem sempre retorna uma nova instância de uma classe. Este não tem acesso ao this.\
Pode ser utilizado para criar classes **singleton** (uma única instância).

```dart
class One {
  One._privateConstructor();

  static final One _instance = One._privateConstructor();

  factory One() {
    return _instance;
  }
}
```
