[Widgets](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/README.md)

# InteractiveViewer

Um Widget que permite pan e zoom no seu filho. Utilizado quando o filho não cabe na área disponível.

```dart
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
