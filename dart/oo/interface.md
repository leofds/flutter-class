[Dart](https://github.com/leofds/flutter-class/blob/master/dart/dart.md)

# Interface

É uma classe abstrata com métodos não implementados. Não pode ser instanciada, deve ser implementada na classe contreta.
Permite o polimorfismo sem herança.

**interface**

```dart
abstract class Veiculo {
  void buzinar();
}
```

**classe concreta**

```dart
class Moto implements Veiculo {
  @override
  void buzinar() => print('biiiiii');
}
```

**Diagrama de classe**

![image](https://github.com/leofds/flutter-class/assets/5174326/08f9d3da-9716-433d-a06e-059d5cac2e45)

**Exemplo**

```dart
Carro carro = Carro();
Moto moto = Moto();

List<Veiculo> veiculos = [];
veiculos.add(carro);
veiculos.add(moto);
```
