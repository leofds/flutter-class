[Dart](https://github.com/leofds/flutter-class/blob/master/dart/dart.md)

# Mixin

É um recurso do Dart que permite adicionar código a uma classe sem a necessidade de herança.

**Declarando o mixin**

```dart
mixin Avaliar{
  void avaliar(String avalicacao) {
    print(avalicacao);
  }
}
```

**Utiliando em uma classe (with)

```dart
class Professor extends Pessoa with Avaliar {}
```
---
Restringindo o mixin a uma classe específica:\
… basta adicionar on <Classe>

```dart
mixin Avaliar on Pessoa{
  void avaliar(String avalicacao) {
    print(avalicacao);
  }
}
```
