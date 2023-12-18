[Dart](https://github.com/leofds/flutter-class/blob/master/dart/README.md)

# Classe base

Uma classe base não permite implementação fora de sua própria biblioteca.

```dart
base class Veiculo {
  void acelerar(int velocidade) {
    // ...
  }
}

// Pode ser construido
Veiculo meuVeiculo = Veiculo();

// Pode ser herdado
base class Carro extends Veiculo {
  int passageiros = 4;
  // ...
}

// ERROR: Não pode ser reimplementado
base class VeiculoMock implements Veiculo {
  @override
  void acelerar() {
    // ...
  }
}
```
