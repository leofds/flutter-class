[Widgets](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/README.md)

# Stack & Positioned

Colocar um Widget em cima do outro.
O Widget **Positioned** define onde o filho do widget Stack é posicionado.

```dart
Stack(
  children: [
    Positioned(
      top: 0,
      bottom: 0,
      right: 0,
      left: 0,
      child: <Widget?>
    )
  ],
)
```

```dart
Positioned.fill(
  child: Image(
    image: AssetImage('assets/placeholder.png'),
    fit : BoxFit.fill,
 ),
),
```
