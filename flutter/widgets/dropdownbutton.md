[Widgets](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/README.md)

# DropdownButton

```dart
List<String> _options = ['opção 1', 'opção 2'];

DropdownButton<String>(
  hint: Text("Selecione"),
  items: _options.map<DropdownMenuItem<String>>((String item) {
    return DropdownMenuItem(value: item, child: Text('${item}'));
  }).toList(),
  onChanged: (selected) {},
)
```

```dart
DropdownButton<String>(
  hint: Text("Selecione"),
  items: [
    for (var item in _options)
      DropdownMenuItem(
        value: item,
        child: Text('${item}'),
      )
  ],
  onChanged: (selected) {},
)
```
