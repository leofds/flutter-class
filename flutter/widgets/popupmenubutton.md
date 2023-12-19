[Widgets](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/README.md)

# PopupMenuButton

```dart
PopupMenuButton(
  onSelected: (int value) {
    print(value);
  },
  itemBuilder: (BuildContext context) => <PopupMenuEntry<int>>[
    const PopupMenuItem<int>(
      value: 1,
      child: Text('Item 1'),
    ),
    const PopupMenuItem<int>(
      value: 2,
      child: Text('Item 2'),
    ),
  ],
),
```
