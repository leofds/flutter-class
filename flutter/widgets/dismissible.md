[Widgets](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/README.md)

# Dismissible

```dart
Dismissible(
  key: Key(DateTime.now().microsecondsSinceEpoch.toString()),  // Uma chave qualquer para identificar o elemento
  background: Container(
    color: Colors.red,
    child: Align(
    alignment: Alignment(-0.9, 0.0),
      child: Icon(Icons.delete, color: Colors.white,),
    ),
  ),
  child: <Widget?>,
  direction: DismissDirection.startToEnd,
  onDismissed: (direction){}
)
```
