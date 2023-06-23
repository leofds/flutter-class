[Dart](https://github.com/leofds/flutter-class/blob/master/dart/dart.md)

# Polimofismo

Várias formas de referenciar um objeto.

```dart
Cachorro cao = Cachorro();
Gato gato = Gato();

List<Animal> animais = [];
animais.add(cao);
animais.add(gato);

if (animais[0] is Cachorro) {
  Cachorro cao1 = animais[0] as Cachorro; // Conversão de tipo
}
```
