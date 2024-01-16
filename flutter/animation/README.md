[Flutter](https://github.com/leofds/flutter-class/blob/master/flutter/README.md)

# Animation

Existem diferentes abordagens para criar animações em Flutter.

## 1. Implicit Animations (animações básicas)

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

Este são os **Implicit Animation Widgtes**, a maneira mais simples de adicionar animação sem complexidade.

### Controlando a animação

Estes Widgets animados possuem duas propriedades que precisamos definir para controlar o comportamento da animação, **duration** e **curve**.

```dart
AnimatedContainer(
  width: _lado ? 100 : 200,
  height: _lado ? 200 : 100,
  color: _lado ? Colors.red : Colors.green,
  duration: Duration(seconds: 1),
  curve: Curves.easeInOutQuint,
),
```

```dart
bool _lado = true;

onclick(){
  setState((){
    _lado = !_lado;
  });
}
```

**Duration**

Duração é o tempo que o Widget levará para interpolar o valor antido para o novo.

**Curve**

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

Se você deseja criar animações básicas mas nenhuma das Implicit Animations bult-in é o que você procura, você pode utilizar o TweenAnimationBuilder para criar a animação com Widgets que não são animados.

```dart
TweenAnimationBuilder(
  tween: Tween(begin: 0.0, end: 1.0),
  duration: Duration(seconds: 1),
  curve: Curves.easeInOutCirc,
  child: Text('Hello'),
  builder: (context, value, child) {
    return Transform.translate(
        offset: Offset(0.0, 100 * value), child: child);
  },
)
```

O Objeto `Teen` permite especificar o range de valores.

```dart
tween: ColorTween(begin: Colors.white, end: Colors.blue),
```

O parâmetro `builder` permite especificar a função que gerará um Widget em um momento do tempo.

## 3. Built-in explicit animations

Implicit Animations e TweenAnimationBuilder são animações que vão em uma direção, "interpolando-se" do início ao fim. Com eles o Flutter assume o controle.

Explicit Animations são Widgets que herdan AnimatedWidget como: `ScaleTransition`, `DecoratedBoxTransition`, `SizeTransition`, `PositionedTransition` e mais.

## 4. AnimatedBuilder/AnimatedWidget

## 5. Bare Metal Explicit Animations

