[Widgets](https://github.com/leofds/flutter-class/blob/master/flutter/widgets.md)

# DropdownButton

```dart
List<MyModel>? _models;

DropdownButton<MyModel>(
  hint: Text("Selecione"),
  items: _models!.map<DropdownMenuItem<MyObj>>((MyModel model) {
    return DropdownMenuItem(value: model, child: Text(model.description ?? "null"));
  }).toList(),
  onChanged: (selected) {},
)
```
