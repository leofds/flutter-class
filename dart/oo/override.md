[Dart](https://github.com/leofds/flutter-class/blob/master/dart/README.md)

# Reescrita de método @override

Reimplementa um método do pai no filho.

```dart
class Animal {
  String? nome;
  double? peso;

  void comer() => print('Comendo');
}
```

```dart
class Cachorro extends Animal {

  @override
  void comer() {
    print('Comendo muito');
  }

  @override
  String toString() {
    return 'Cachorro nome=$nome, peso=$peso';
  }
}
```
