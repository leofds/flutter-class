[Widgets](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/README.md)

# DraggableScrollableSheet

```dart
DraggableScrollableSheet(
  initialChildSize: 0.1,
  minChildSize: 0.1,
  maxChildSize: 0.8,
  builder:(BuildContext context, ScrollController scrollController) {
    return ListView.builder(
      controller: scrollController,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Widget()
      }
    );
  }
)
```
