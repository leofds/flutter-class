[Widgets](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/README.md)

# CustomSingleChildLayout

```dart
final ValueNotifier<Size> _size = ValueNotifier<Size>(const Size(200.0, 100.0));
```

```dart
CustomSingleChildLayout(
  delegate: CustomLayoutDelegate(_size),
  child: <Widget>,
)
```

```dart
class CustomLayoutDelegate extends SingleChildLayoutDelegate {

  CustomLayoutDelegate(this.size) : super(relayout: size);

  final ValueNotifier<Size> size;

  // Usado para definir o tamanho do CustomSingleChildLayoutobjeto (não do filho).
  @override
  Size getSize(BoxConstraints constraints) {
    return size.value;
  }

  // Usado para definir as restrições do filho
  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    return BoxConstraints.tight(size.value / 2);
  }

  // Usado para definir a posição do filho
  @override
  Offset getPositionForChild(Size size, Size childSize) {
    return Offset(size.width / 4, size.height / 4);
  }

  @override
  bool shouldRelayout(CustomLayoutDelegate oldDelegate) {
    return size != oldDelegate.size;
  }
}
```
