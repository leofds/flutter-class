[Widgets](https://github.com/leofds/flutter-class/blob/master/flutter/widgets.md)

# ListView.buider

Cria uma lista que é construída conforme ele for aparecendo (sob demanda), não consome recursos

```dart 
ListView.builder(
  padding: EdgeInsets.only(top: 10.0),
  itemCount: _list.length,
  itemBuilder: (context, index){
    return <Widget>;
  }
)
```

```dart
istView.separated(
  itemCount: _list.length,
  itemBuilder: (context, item) {
    return <Widget>;
  },
  separatorBuilder: (BuildContext, index) {
    return Divider(height: 1);
  },
)
```
