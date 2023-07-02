
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

## Text

- [Text](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/text.md)
- [TextField](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/textfield.md)
- [Form](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/form.md)
- [TextFormField](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/textformfield.md)

## Button

- [TextButton](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/textbutton.md)
- [ElevatedButton](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/elevatedbutton.md)
- [IconButton](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/iconbutton.md)

## Image

- [Image](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/image.md)
- [CircleAvatar](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/circleavatar.md)
- [Icon](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/icon.md)



## SingleChildScrollView

Cria um scroll view de apenas um filho

```dart
SingleChildScrollView(
  child: <Widget?>
)
```

## ListView

Exibe lista. Também serve para mostrar itens na vertical em tela pequena. Tudo o que for colocado dentro do lista vai ocupar o maximo espaco horizontal. Pode estar dentro de um SizedBox para limitar o tamanho verticale criar o scroll automatico.

```dart
ListView(
  children: <Widget?>[]
)
```

## ListTile

Um item da lista, limita as informações exibidas

```dart
ListTile(
  title: Text('Tarefa 1'),
  subtitle: Text('20/11/2022'),
  leading: Icon(Icons.save, size: 30,),
  onTap: (){
    print('tarefa 1');
  },
)
```

## ListView.buider

Cria uma lista que é construída conforme ele for aparecendo (sob demanda), não consome recursos

```dart 
ListView.builder(
  padding: EdgeInsets.only(top: 10.0),
  itemCount: _list.length,
  itemBuilder: (context, index){
    return <Widget>;
  }
)
```

```dart
istView.separated(
  itemCount: _list.length,
  itemBuilder: (context, item) {
    return <Widget>;
  },
  separatorBuilder: (BuildContext, index) {
    return Divider(height: 1);
  },
)
```

## Card

```dart
Card(
  child: Container(
    height: 100,
  ),
),
```

## Switch

```dart
boo sw = true;    // atributo

Switch(
  value: sw,
  onChanged: (value) {
    setState(() {
      sw = value;
    });
  },
),
```

## Checkbox

https://api.flutter.dev/flutter/material/Checkbox-class.html

```dart
bool cb = true;   // atributo

Checkbox(
  value: cb,
  onChanged: (bool? value) {
    setState(() {
      cb = value!;
    });
  },
)
```

## GestureDetector

Torna im Widget clicável

```dart
GestureDetector(
  child: <Widget?>,
  onTap: (){},
  onLongPress: (){}
)
```

## InkWell

Semelhante ao gesture detector, porém cria um efeito visual ao toque

```dart
InkWell(
  onTap: (){},
  onLongPress: (){},
  child: <Widget?>,
}
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


