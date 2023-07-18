[Widgets](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/README.md)

# DropdownButton

```dart
List<String> _options = ['opção 1', 'opção 2'];

DropdownButton<String>(
  hint: Text("Selecione"),
  items: _models!.map<DropdownMenuItem<String>>((String option) {
    return DropdownMenuItem(value: option, child: Text('${option}'));
  }).toList(),
  onChanged: (selected) {},
)
```
