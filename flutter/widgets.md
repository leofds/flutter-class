
# Widgets

Relação dos principais Widgets e suas propriedades mais comuns

## Base

- [MaterialApp](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/materialapp.md)
- [Scaffold & AppBar & Drawer & FloatingActionButton](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/scaffold.md)
- [SafeArea](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/safearea.md)

## Layout

- [Container](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/container.md)
- [Column](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/column.md)
- [Row](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/row.md)
- [Center](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/center.md)
- [Padding](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/padding.md)
- [Expanded & Flexible](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/expanded_flexible.md)
- [SizedBox](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/sizedbox.md)
- [Divider](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/divider.md)
- [Align](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/align.md)
- [SingleChildScrollView](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/singlechildscrollview.md)

## Text

- [Text](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/text.md)
- [TextField](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/textfield.md)
- [Form](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/form.md)
- [TextFormField](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/textformfield.md)

## Button

- [TextButton](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/textbutton.md)
- [ElevatedButton](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/elevatedbutton.md)
- [IconButton](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/iconbutton.md)
- [Switch](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/switch.md)
- [Checkbox](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/checkbox.md)

## Image

- [Image](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/image.md)
- [CircleAvatar](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/circleavatar.md)
- [Icon](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/icon.md)

## Gesture

- [GestureDetector](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/gesturedetector.md)
- [InkWell](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/inkwell.md)

## List

- [ListView](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/listview.md)
- [ListTile](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/listtile.md)
- [CheckBoxListTile](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/checkboxlisttile.md)
- [ListViewBuilder](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/listviewbuilder.md)
- [Dismissible](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/dismissible.md)

## Builder

- [FutureBuilder](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/futurebuilder.md)

## Progress

[CircularProgressIndicator](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/circularprogressindicator.md)

## Grid

[GridViewBuiler](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/gridviewbuilder.md)

---

## Card

```dart
Card(
  child: Container(
    height: 100,
  ),
),
```

## PageView

```dart
final pageController = PageController();
```

```dart
PageView(
  controller: pageController,
  //physics: NeverScrollableScrollPhysics(),    // Desabilita a transição
  children: [
    <Widget>,
    <Widget>,
    <Widget>,
  ],
)
```

Mudar a página através do código
```dart
pageController.jumpToPage(0);
```


