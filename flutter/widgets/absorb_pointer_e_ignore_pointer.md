[Widgets](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/README.md)

# AbsorbPointer

Widget que absorve o evento de toque. 
Uma forma simples de isolar eventos de toque em telas com subarvores muito complexas.

```dart
AbsorbPointer(
  absorbing: true,          // Bloqueia o event de clique nos widgets filho
  ignoringSemantics: true,  // Permite controlar se leitores de tela vão ignorar os widgets bloqueados
  child: ElevatedButton(
    onPressed: () {
    },
    child: null,
  ),
)
```

# IgnorePonter

Semelhante ao AbsorbPointer, porém permite que o widget posicionado atrás receba o evento de toque.

```dart
IgnorePointer(
  ignoring: true,
  ignoringSemantics: false,
  child: Widget()
)
```
