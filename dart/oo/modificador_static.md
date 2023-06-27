[Dart](https://github.com/leofds/flutter-class/blob/master/dart/README.md)

# Modificador static

Atributos e métodos de uma classe podem ser definidos como *static*, tornando-os **acessíveis sem a criação do objeto**.\

**Atributo estático:**\
Também conhecido como **variável de classe**, é uma variável cujo valor é o mesmo em todos os objetos da classe.\

**Médodo estático:**\
Método pertencente a classe ao invés da instância da classe (objeto). Métodos estáticos acessam somente atributos estáticos.

```dart
class StaticMem {
  static late int num;

  static void display() {
    print('Valor de num é: $num');
  }
}
```

```dart
void main(List<String> args) {
  StaticMem.num = 18;
  StaticMem.display();
}
```
