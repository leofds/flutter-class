[Widgets](https://github.com/leofds/flutter-class/blob/master/flutter/widgets.md)

# Checkbox

https://api.flutter.dev/flutter/material/Checkbox-class.html

```dart
bool cb = true;   // atributo

Checkbox(
  value: cb,
  onChanged: (bool? value) {
    setState(() {
      cb = value!;
    });
  },
)
```
