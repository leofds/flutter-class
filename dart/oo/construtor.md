[Dart](https://github.com/leofds/flutter-class/blob/master/dart/dart.md)

# Construtor

Função **com o mesmo nome da classe**, chamada durante a instanciação da classe (durante a criação do objeto).

```dart
class Pessoa {
  String? nome;
  int? idade;

  Pessoa(String nome, int idade) {
    this.nome = nome;
    this.idade = idade;
  }
}
```

```dart
void main() {
  Pessoa pessoa = Pessoa('Maria', 20);
}
```
