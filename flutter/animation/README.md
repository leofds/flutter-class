[Flutter](https://github.com/leofds/flutter-class/blob/master/flutter/README.md)

# Animation

Existem diferentes abordagens para criar animações em Flutter.

## 1. Implicity Animations (animações básicas)

Flutter possui vário Widgets que versões animadas de Widgets comuns.

**Exemplo:**

| Versão animada do Widget | Widget |
|---|---|
| AnimatedAlign | Align |
| AnimatedContainer | Container |
| AnimatedScale | Transform.scale |
| AnimatedRotation | Transform.rotate |
| AnimatedOpacity | Opacity |
| AnimatedPadding | Padding |
| AnimatedOpacity | Opacity |
| AnimatedPositioned | Positioned |

Estes Widgets automaticamente animam as alterações em suas propiedades. Quando você reconstroi um Widget com um novo valor em sua propriedade, como por exemplo chamando o setState de um Statefull Widget, o Widget manupula a animação de transição da propriedade alterada.

Este são os **Implicity Animation Widgtes**, a maneira mais simples de adicionar animação sem complexidade.

Estes Widgets animados possuem duas propriedades que precisamos definir para controlar o comportamento da animação, **duration** e **curve**.

```dart
AnimatedContainer(
  width: _bigger ? 100 : 500,
  child: Image.asset('assets/star.png'),
  duration: Duration(seconds: 1),
  curve: Curves.easeInOutQuint,
),
```

### Duration

Duração é o tempo que o Widget levará para interpolar o valor antido para o novo.

### Curve

Curva permite controlar a forma como o Widget interpola do valor antigo para o novo. A curva controla a taxa de mudança no tempo que foi definido em **duration**.

Existem várias curvas pré-definidas que podem ser utilizadas: [built-in Curves](https://api.flutter.dev/flutter/animation/Curves-class.html)

Porém você pode implementar sua própria função geradora da curva

```dart
class SineCurve extends Curve {
  final double count;
 
  SineCurve({this.count = 1});
 
  @override
  double transformInternal(double t) {
    return sin(count * 2 * pi * t) * 0.5 + 0.5;
  }
}
```

## 2. TweenAnimationBuilder (Customizando Implicit Animations)

## 3. Built-in explicit animations

## 4. AnimatedBuilder/AnimatedWidget

## 5. Bare Metal Explicit Animations

