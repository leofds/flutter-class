[Dart](https://github.com/leofds/flutter-class/blob/master/dart/README.md)

# Regex

```dart
String input = '1234';

final exp = RegExp(r'^([0-9]{4})$');  // Deve haver 4 dígitps de 0 à 9

if(exp.hasMatch(input)){
  print('válido');
}else{
  print('inválido');
}
```

Multi-line

```dart
String input = '1234\n123';

final exp = RegExp(r'^([0-9]{4})$',multiLine: true);

if(exp.hasMatch(input)){
  print('válido');
  Iterable<Match> matches = exp.allMatches(input);
  for(Match m in matches){
    print(m.group(0));
  }
}else{
  print('inválido');
}
```
