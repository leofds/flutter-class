[Dart](https://github.com/leofds/flutter-class/blob/master/dart/README.md)

# Enumeradores

```dart
enum Status { desligado, ligado, standby }
```

```dart
void main(List<String> arguments) {
  Status status = Status.ligado;
  switch (status) {
    case Status.desligado:
      break;
    case Status.ligado:
      break;
    case Status.standby:
      break;
  }

  print(status.index);
  print(Status.values[1]);
}
```
