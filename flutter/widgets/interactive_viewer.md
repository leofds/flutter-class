[Widgets](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/README.md)

# InteractiveViewer

Um Widget que permite pan e zoom no seu filho. Utilizado quando o filho não cabe na área disponível.

```dart
final TransformationController _controller = TransformationController();

Container(
  child: InteractiveViewer(
    maxScale: 100,                            // Scala máxia de zoom
    constrained: false,                       // Permite o widget se dimensionar por si mesmo
    scaleEnabled: false,                      // Limita o movimento
    boundaryMargin: EdgeInsets.all(10),       // Margin
    onInteractionStart: _handleInteration,    // Callbacks
    transformationController: _controller,    // Controlador para controlar automático pan em zoom programaticamente
    child: Image.asset('assets/images/planet.jpg'),
  ),
)
```

restaurando o zoom e pan
```dart
if (_controller.value != Matrix4.identity()) {
  _controller.value = Matrix4.identity();
}
```
