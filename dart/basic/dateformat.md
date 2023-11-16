[Dart](https://github.com/leofds/flutter-class/blob/master/dart/README.md)

# DateFormat

## 1. Adicione o package `intl` ao arquivo pubspec.yaml

```dart
name: dart_application_1
description: A sample command-line application.
version: 1.0.0

environment:
  sdk: ^3.1.5

dependencies:
  intl: ^0.18.1    # Adicione o package

dev_dependencies:
  lints: ^2.0.0
  test: ^1.21.0
```

## 2. Formatando DateTime para String

```dart
import 'package:intl/intl.dart';

DateTime agora = DateTime.now();
DateFormat df = DateFormat('dd/MM/yyyy HH:mm:ss');
String dtStr = df.format(agora);

print(dtStr); // Exibe 19/05/2022 23:51:40
```

## 3. Convertendo String para DateTime

```dart
import 'package:intl/intl.dart';

DateFormat df = DateFormat('dd/MM/yyyy HH:mm:ss');
DateTime dateTime = df.parse('19/05/2022 23:50:00');

print(dateTime); // Exibe 2022-05-19 23:50:00.000
```
