[Dart](https://github.com/leofds/flutter-class/blob/master/dart/README.md)

# Generators

Dart Generator é uma função que nos permite produzir uma sequência de valores **sob demanda**, ou seja, são gerados quando tentarmos iterar sobre os iteradores.\

São dois tipos de geradores: **Síncronos , Assíncronos**

### keywords:

**yeld** retorna um valor único para a sequência de cada vez. \
**sync\*** usado para declarar a função do gerador síncrono. Indica que retorna um valor quando tentamos iterar sobre a função. \
**async\*** usado para declarar a função o gerador assíncrono. Indica que retorna o objeto de fluxo. \

**Iterable** coleção de elementos que podem ser acessador sequencialmente. \
**Stream** é como um iterable assíncrono.

## Geradores síncronos

```dart
Iterable<int> oddMumber(int num) sync* {
  int k = num;
  while (k > 0) {
    yield k--;
  }
}
```

```dart
void main(List<String> args) {
  Iterable<int> values = oddMumber(4);
  for (int num in values) {
    print(num);
  }
  print('FIM');
}
```

## Geradores assíncronos

```dart
Stream<int> asyncOddMumber(int num) async* {
  int k = num;
  while (k > 0) {
    yield k--;
  }
}
```

```dart
void main(List<String> args) {
  Stream<int> v = asyncOddMumber(4);
  values.forEach(print);
  print('FIM');
}
```
