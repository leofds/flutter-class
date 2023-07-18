[Widgets](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/README.md)

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
      backgroundColor: Colors.blue,
      elevation: 0.0,
      flexibleSpace: const FlexibleSpaceBar(
        title: Text('Sliver Title'),
        background: FlutterLogo(),
      ),
      actions: <Widget>[],
    )
  ]
)
```

## SliverList

```dart
SliverList(
  delegate: SliverChildBuilderDelegate((buildContext, index) {
    return Widget();
  },
  childCount: 10),
)
```

## SliverGrid

```dart
SliverGrid(
  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
    maxCrossAxisExtent: 200.0,
    mainAxisSpacing: 10.0,              // espaçamento eixo principal
    crossAxisSpacing: 10.0,             // espaçamento exo cruzado
    childAspectRatio: 4.0,              // proporção de tela do filho
  ),
  delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
      return Widget();
    },
    childCount: 20,
  ),
)
```
