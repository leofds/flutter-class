[Dart](https://github.com/leofds/flutter-class/blob/master/dart/README.md)

# Keyword super

Refere-se a classe Pai, pode ser um construtor, atributo ou método.

```dart
class Animal {
  String nome;
  double peso;

  Animal(this.nome, this.peso);
}

class Cachorro extends Animal {
  Cachorro(super.nome, super.peso);
}
```

Redirecionando o construtor para a classe pai

```dart
class Cachorro extends Animal {
  Cachorro(String nome, double peso) : super(nome, peso);
}
```
