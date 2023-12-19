[Flutter](https://github.com/leofds/flutter-class/blob/master/flutter/README.md)

# Shared Preferences

Armazenamento em disco de valores em formato de mapa, ideal para salvar preferências do App.
Não deve conter informações críticas ou sensíveis.

## 1. Adicione a biblioteca do pacote

```dart
flutter pub add shared_preferences
```

## 2. Obtendo a instância

```dart
final SharedPreferences prefs = await SharedPreferences.getInstance();
```

## 3. Ecrevendo dados

```dart
await prefs.setInt('idade', 10);
await prefs.setBool('ligado', true);
await prefs.setDouble('valor', 1.5);
await prefs.setString('nome', 'Leo');
await prefs.setStringList('items', <String>['Dom', 'Seg', 'Ter']);
```

## 4. Lendo dados

```dart
int? counter = prefs.getInt('idade');
bool? repeat = prefs.getBool('ligado');
double? decimal = prefs.getDouble('valor');
String? action = prefs.getString('nome');
List<String>? items = prefs.getStringList('items');
```

## 5. Removendo uma entrada

```dart
await prefs.remove('idade');
```
