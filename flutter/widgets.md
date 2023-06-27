
# Widgets

Relação dos principais Widgets e suas propriedades mais comuns

## MaterialApp

```dart
MaterialApp(
  debugShowCheckedModeBanner: false,    // Retira a tarja de debug
  title: "Meu App",
  home: <Widget?>,
)
```

## Scaffold & AppBar & Drawer

```dart
Scaffold(
  backgroundColor: Colors.red,
  appBar: AppBar(
    title: Text('Title'),
    centerTitle: true,
  ),
  drawer: Drawer(
    child: <Widget>,
  ),
  body: <Widget?>,
)
```
