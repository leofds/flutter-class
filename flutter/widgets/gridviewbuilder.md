[Widgets](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/README.md)

# GridViewBuilder

```dart
GridView.builder(
  padding: EdgeInsets.all(10.0),
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    crossAxisSpacing: 10.0,
    mainAxisSpacing: 10.0
  ),
  itemCount: 4,
  itemBuilder: (context, index){
    return <Widget?>;
  }
)
```

