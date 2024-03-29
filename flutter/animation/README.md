[Flutter](https://github.com/leofds/flutter-class/blob/master/flutter/README.md)

# Animation

Existem diferentes abordagens para criar animações em Flutter.
[docs](https://docs.flutter.dev/ui/animations)

- [1. Implicit Animations](#1-implicit-animations-anima%C3%A7%C3%B5es-b%C3%A1sicas)
- [2. TweenAnimationBuilder](#2-tweenanimationbuilder-customizando-implicit-animations)
- [3. Built-in Explicit Animations](#3-built-in-explicit-animations)
- [4. AnimatedBuilder/AnimatedWidget](#4-animatedbuilderanimatedwidget)

Outras animações

- [Hero](#hero)

## 1. Implicit Animations (animações básicas)

Flutter possui vários Widgets que são versões animadas de Widgets comuns.

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

Duração é o tempo que o Widget levará para interpolar o valor antigo para o novo.

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

O Objeto `tween` permite especificar o range de valores.

```dart
tween: Tween(begin: 0.0, end: 1.0)
tween: ColorTween(begin: Colors.white, end: Colors.blue)
tween: Tween<AlignmentGeometry>(begin: Alignment.bottomCenter, end: Alignment.topCenter)
```

O parâmetro `builder` permite especificar a função que gerará um Widget em um momento do tempo.

## 3. Built-in Explicit Animations

Implicit Animations e TweenAnimationBuilder são animações que vão em uma direção, "interpolando-se" do início ao fim. Com eles o Flutter assume o controle.

Explicit Animations são Widgets que herdan AnimatedWidget como: `ScaleTransition`, `DecoratedBoxTransition`, `SizeTransition`, `PositionedTransition` e mais.

Agora obtemos um pouco mais de controle sobre a animação, iniciando, parando, repetindo e revertendo o sentido da animação. Isso é possível através do `AnimationController`.

```dart
late AnimationController _animationController;

@override
void initState() {
  super.initState();
  _animationController = AnimationController(
    duration: Duration(seconds: 15),
    vsync: this,
  );
  _animationController.repeat();
}

@override
void dispose() {
  _animationController.dispose();
  super.dispose();
}
```

```dart
if(_animationController.isAnimating){
  _animationController.stop();
}else{
  _animationController.repeat();
}
```

```dart
RotationTransition(
  alignment: Alignment.center,
  child: _getChildWidget(),
  turns: _animationController,
),
```

A propriedade `vsync` do  `AnimationController` espera por um TickerProvider fornecido pelo Mixin `SingleTickerProviderStateMixin`. Isto é necessário para sincronismo da taxa a atualização da animação. Ele permite que a animação ocorra somente se o widget estiver visível.

```dart
class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  ...
}
```

## 4. AnimatedBuilder/AnimatedWidget

Criando explicit animations do zero. 

Assim como os **Built-in Explicit Animations** estes também requerem um `AnimationController` e o Mixin `SingleTickerProviderStateMixin`.

**AnimatedBuilder** é utilizado para desenhar novas versões das animações frame a frame. 

```dart
AnimatedBuilder(
  animation: _controller,
  builder: (_, __) {
    return Widget(
      // use a propriedade _controller.value
    );
  }
)
```

**AnimatedWidget** é utilizado quando queremos separar o `AnimatedBuilder` em um novo Widget. 

```dart
class FooTransition extends AnimatedWidget {
  FooTransition({
    Key? key,
    required Animation<double> animation,
  }) : super(key: key, listenable: animation);

@override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable as Animation<double>;
    return Widget(
      // use a propriedade animation.value
    );
  }
}
```

# Hero

Hero animation é um Widget que voa de uma tela para a outra. [docs](https://docs.flutter.dev/ui/animations/hero-animations)

Basta utilizar o Widget Hero especificando um valor como tag e o filho. Em ambas as telas o Widget Hero precisa ter a mesma tag para a animação ocorrer.

**Tela 1**
```dart
Hero(
  tag: "tag1",
  child: Image.asset('assets/images/carro.png',width: 200, height: 100, fit: BoxFit.cover),
)
```

**Tela 2**
```dart
Hero(
  tag: "tag1",
  child: Image.asset('assets/images/carro.png'),
)
```


