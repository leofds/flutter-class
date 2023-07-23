[Widgets](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/README.md)

## Scaffold & AppBar & Drawer & FloatingActionButton

```dart
Scaffold(
  backgroundColor: Colors.red,
  appBar: AppBar(
    title: Text('Title'),
    centerTitle: true,
    backgroundColor: Colors.green,
    actions: [
      IconButton(
          onPressed: () {},
          icon: Icon(Icons.refresh)),
    ],
  ),
  drawer: Drawer(
    child: <Widget>,
  ),
  floatingActionButton: FloatingActionButton(
    onPressed: (){},
    child: Icon(Icons.add),
    backgroundColor: Colors.red,
  ),
  body: <Widget?>,
)
```

### AppBar transparente
```dart
Scaffold(
  appBar: AppBar(
    title: Text('Transparente'),
    backgroundColor: Colors.transparent,
    elevation: 0,
  ),
  extendBodyBehindAppBar: true,
)
```
