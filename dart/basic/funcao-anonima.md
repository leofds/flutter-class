[Dart](https://github.com/leofds/flutter-class/blob/master/dart/README.md)

## Função anônima e função como parâmetro

```dart
void main() {
  mostrar(() {
    print('Olá');
  });

  mostrar(() => print('Olá'));
}

void mostrar(Function func) {
  func();
}
```

## Função anônima comparâmetros e retorno

```dart
void main() {
  int resultado = mostrar((x) => x * 2);
  print(resultado);
}

int mostrar(Function(int) func) {
  return func(10);
}
```
