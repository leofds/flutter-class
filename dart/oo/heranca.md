[Dart](https://github.com/leofds/flutter-class/blob/master/dart/README.md)

# Herança

Importante conceito da orientação a objetos, herança significa uma classe pode herdar atributos e métodos de outra classe. Isso é definido através da palavra **extends** na classe filha conforme a seguir:

**classe pai**
```dart
class Animal {
  String? nome;
  double? peso;

  void comer() => print('Comeu');
}
```

**classes filha**

```dart
class Cachorro extends Animal {
  void uivar() => print('AUUUUUUUU');
}
```

```dart
class Gato extends Animal {
  int? qtdeVidas;
  void ronronar() => print('rrronn');
}
```

**Diagrama de classe**

![image](https://github.com/leofds/flutter-class/assets/5174326/2e2da15a-8d32-4487-86eb-6b26a9cced69)

**exemplo**

```dart
Cachorro cao = Cachorro();
cao.nome = 'Chihuahua';
cao.peso = 2.5;
cao.comer();      // Método da classe Animal
cao.uivar();      // Método da classe Cachorro

Gato gato = Gato();
gato.nome = 'Perça';
gato.peso = 2.1;
gato.comer();     // Método da classe Animal
gato.ronronar();  // Método da classe Gato
```

## Classe object

Em Dart todas as classes são filhas de Object.

```dart
String nome = 'Maria';
if (nome is Object) {
  print('É filha de Object');
}
```
