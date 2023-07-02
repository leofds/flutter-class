
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

## Text

- [Text](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/text.md)
- [TextField](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/textfield.md)

## TextButton

```dart
TextButton(
  onPressed: (){},
  style: TextButton.styleFrom(
    primary: Colors.black,              // Ao clicar o efeito do botão fica com uma cor preta
    padding: const EdgeInsets.all(32),  // ou EdgeInsets.only(top: 32)
    fixedSize: const Size(100, 100),    // Cuidade pois não irá redimencionar
    backgroundColor: Colors.white,
    fixedSize: const Size(100, 100),    // Cuidado pois não irá redimencionar
    shape: RoundedRectangleBorder(      // Borda do botão
      side: BorderSide(color: Colors.green,width: 5,),
      borderRadius: BorderRadius.circular(24)
    )
  ),
  child: <Widget?>
)
```

## ElevatedButton

```dart
ElevatedButton(
  onPressed: (){},
  child: <Widget?>,
  style: ElevatedButton.styleFrom(
    primary: Colors.purple,         // cor do botão
    fixedSize: Size(100, 200),      // define um tamanho fixo
    padding: EdgeInsets.all(32),    // espaçamento
    padding: EdgeInsets.zero
    shape: StadiumBorder(),         // borda redonda
  ),
)
```



## Form

Criando uma chave para o form

```dart
GlobalKey<FormState> _formKey = GlobalKey<FormState>();
```

Criando o form com a chave

```dart
Form (
  key: _formKey,
  child: TextFormField(),
)
```

## TextFormField

Semelhante ao TextField mas, possui a propriedade validator, desde que esteja dentro de um Form para validar chamar _formKey.currentState!.validate()

```dart
TextFormField(
  validator: (value) {
    if( <invalido> ){
      return "Informe o valor";  // Mensagem a ser exibida em vermelho em baixo da caixa caso a validação falhe
    }
  }
)
```

Verificando se o form é válido

```dart
if(_formKey.currentState!.validate()) {
```

## Image

```dart
Image(image: AssetImage('assets/images/person.png'), height: 200),
```

## Image

```dart
Image(image: AssetImage('assets/images/person.png'), height: 200),
```

```dart
Image.network('https://www.maxicar.com.br/wp-content/uploads/2023/01/VW-Brasilia-1976-1.jpg'),
```

```dart
Image.asset('assets/images/person.png'),
```

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

## IconButton

```dart
IconButton(
  onPressed: (){},
  icon: Icon(Icons.photo_camera)
)
```

## Icon

```dart
Icon(
  Icons.add,
  size: 30,
  color: Colors.black
)
```

## Align

Alinha um Widget que naturalmente ficaria alinhado

```dart
Align(
  alignment: Alignment.centerRight,
  child: Icon(Icons.delete, color: Colors.black,),
)
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

## Divider

Cria uma linha

```dart
Divider()
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

## CircleAvatar

```dart
CircleAvatar(
  backgroundImage: NetworkImage('https://www.maxicar.com.br/wp-content/uploads/2023/01/VW-Brasilia-1976-1.jpg'),
  //backgroundImage: AssetImage('assets/image/santana.jpg'),
  radius: 80,
)
```
