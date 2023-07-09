[Widgets](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/README.md)

# LayoutBuilder

```dart
LayoutBuilder(
  builder: (BuildContext context, BoxConstraints constraints) {
    if (constraints.maxWidth > 600) {
      return _buildWideContainers();
    } else {
      return _buildNormalContainer();
    }
  },
)
```
