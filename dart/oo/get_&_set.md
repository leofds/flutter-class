# Get e Set

## Atributos privados

Dart não possui atributos privados, para representar esse tipo de atributo utiliza-se _ antes do nome da variável, indicando que esse atributo não deve ser acessado fora da classe.

```dart
class Pessoa {
  String? _nome;
}
```dart

```
void main(List<String> arguments) {
  Pessoa pessoa = Pessoa();
  pessoa._nome = 'Leo';    // Não utilize atributos privados fora da classe
}
```

## 
