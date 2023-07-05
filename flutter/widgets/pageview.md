[Widgets](https://github.com/leofds/flutter-class/blob/master/flutter/widgets.md)

# PageView

```dart
final _pageController = PageController();
```

```dart
PageView(
  controller: _pageController,
  //physics: NeverScrollableScrollPhysics(),    // Desabilita a transição
  children: [
    Container(color: Colors.yellow,),
    Container(color: Colors.red,),
  ],
)
```

Mudar a página através do código
```dart
_pageController.jumpToPage(0);
```

```dart
_pageController.animateToPage(page, duration: duration, curve: curve)
```
