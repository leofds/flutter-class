[Widgets](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/README.md)

# OrientationBuilder

```dart
OrientationBuilder(
  builder: (context, orientation) {
    return orientation == Orientation.portrait
      ? _buildVerticalLayout()
      : _buildHorizontalLayout();
  },
)
```
