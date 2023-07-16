[Widgets](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/README.md)

# Draggable & DragTarget

Draggable é um Widget que pode ser arrastado para um DragTarget.

```dart
Draggable<int>(
      data: 10,                         // Este é o valor que o Draggable armazena
      feedback: Widget(),               // Widget que é arrastado
      childWhenDragging: Widget(),      // Widget que fica no lugar quando arrastando
      child: Widget(),                  // Widget quando não há arrasto
    )
```

```dart
DragTarget<int>(
  builder: (
    BuildContext context,
    List<dynamic> accepted,
    List<dynamic> rejected,
  ) {
    return Widget();
  },
  onAccept: (int id) {},
)
```
