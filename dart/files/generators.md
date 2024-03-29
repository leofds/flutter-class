[Dart](https://github.com/leofds/flutter-class/blob/master/dart/README.md)

# Generators

Dart Generator é uma função que nos permite produzir uma sequência de valores **sob demanda**, ou seja, são gerados quando tentarmos iterar sobre os iteradores.

São dois tipos de geradores: **Síncronos , Assíncronos**

### keywords:

**sync\*** usado para declarar a função do gerador síncrono. Indica que retorna um valor quando tentamos iterar sobre a função.\
**async\*** usado para declarar a função do gerador assíncrono. Indica que retorna o objeto de fluxo.

**yeld** retorna um valor único para a sequência de cada vez.\
**yield\*** utilizado em generators recursivos para melhorar a performance.

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

Utilizando a função

```dart
void main(List<String> args) {
  Stream<int> values = asyncOddMumber(4);
  values.forEach(print);
  print('FIM');
}
// resultado: FIM 4 3 2 1
```

```dart
void main(List<String> args) async {
  Stream<int> values = asyncOddMumber(4);
  await values.forEach(print);
  print('FIM');
}
// resultado: 4 3 2 1 FIM
```

Gerador recursivo

```dart
Iterable<int> oddMumber(int num) sync* {
  int k = num;
  while (k > 0) {
    yield k;
    yield* oddMumber(k-1);
  }
}
```
