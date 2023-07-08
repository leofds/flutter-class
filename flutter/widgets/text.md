[Widgets](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/README.md)

# Text

```dart
Text(
  "Texto",
  style: TextStyle(
    fontSize: 30,
    color: Colors.white,
    fontWeight: FontWeight.w700
  )
)
```

Definindo o comportamento quando o text é maior do que área disponível

```dart
Expanded(
  child: Text(
    'Frase longa',
    maxLines: 1,
    overflow: TextOverflow.ellipsis,
  ),
)
```
