[Dart](https://github.com/leofds/flutter-class/blob/master/dart/README.md)

# Modificador de classe: Interface

Uma classe que pode ser implementada mas não extendida.

```dart
interface class Veiculo {
  void acelerar(int velocidade) {
    // ...
  }
}

// Pode ser construido
Veiculo meuVeiculo = Veiculo();

// ERROR: Não pode ser extendido (não funcionou como o esperado)
class Carro extends Veiculo {
  int passageiros = 4;

  // ...
}

// Pode ser implementado
class MockVeiculo implements Veiculo {
  @override
  void acelerar(int velocidade) {
    // ...
  }
}
```
