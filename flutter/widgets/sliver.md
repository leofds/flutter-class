[Widgets](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/README.md

# Sliver

Efeitos de rolagem sofisticados

## SliverAppBar

```dart
CustomScrollView(
  slivers: [
    SliverAppBar(      
      pinned: true,          // Se true, mantém uma parte da barra sempre visível no início da rolagem
      floating: false,       // Se true, exibe a barra de rolagem novamente nomovimento contrário
      snap: false,           // Se true, ativa um efeito de exibição da barra
      expandedHeight: 150.0,
      flexibleSpace: const FlexibleSpaceBar(
        title: Text('Sliver Title'),
        background: FlutterLogo(),
      ),
      actions: <Widget>[],
    )
  ]
)
```
