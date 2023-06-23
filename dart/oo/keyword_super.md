[Dart](https://github.com/leofds/flutter-class/blob/master/dart/dart.md)

# Keyword super

Refere-se a classe Pai, pode ser um construtor, atributo ou método.

```dart
class Animal {
  String? nome;
  double? peso;

  Animal(this.nome, this.peso);
}
```

```dart
class Cachorro extends Animal {
  Cachorro(String nome, double peso) : super(nome, peso);
}
```
