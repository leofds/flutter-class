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

```dart
[Widgets](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/README.md)

# Dismissible

```dart
ListView.builder(
  itemCount: 10,
  itemBuilder: (contex, index) {
    return Dismissible(
      direction: DismissDirection.horizontal,    // Há outras opções como DismissDirection.endToStart
      key: UniqueKey(),                          // ou um valor inteiro ValueKey<int>(index),
      onDismissed: (direction) {},
      confirmDismiss: (direction) async => true,
      background: Container(
        color: Colors.green,
      ),
      secondaryBackground: Container(
        color: Colors.red,
      ),
      child: ListTile(
        title: Text('Item ${index}'),
      ),
    );
  })
```
```
