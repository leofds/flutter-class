
# Widgets

Relação dos principais Widgets e suas propriedades mais comuns

## MaterialApp

```dart
MaterialApp(
  debugShowCheckedModeBanner: false,    // Retira a tarja de debug
  title: "Meu App",
  home: <Widget?>,
)
```

## Scaffold & AppBar & Drawer

```dart
Scaffold(
  backgroundColor: Colors.red,
  appBar: AppBar(
    title: Text('Title'),
    centerTitle: true,
  ),
  drawer: Drawer(
    child: <Widget>,
  ),
  body: <Widget?>,
)
```

## Text

```dart
Text(
  "Texto",
  style: TextStyle(
    fontSize: 30,
    color: Colors.white,
    fontWeight: FontWeight.w700
  )
)
```

Definindo o comportamento quando o text é maior do que área disponível

```dart
Expanded(
  child: Text(
    'Frase longa',
    maxLines: 1,
    overflow: TextOverflow.ellipsis,
  ),
)
```
## Container

```dart
Container(
  alignment: Alignment.center,		    // Alinha o conteúdo no container
  color: ,
  width: 50,
  height: 100,                        // se não for definido um tamanho ele se auto ajusta ao conteúdo
  padding: EdgeInsets.all(10.0),      // espeçamento dentro do container
  margin: EdgeInsets.only(left: 10),  // semelhante ao padding porém faz o afastamento fora do container
  child: <Widget?>,
)
```

## Column

```dart
Column(
  mainAxisAlignment: MainAxisAlignment.center,      // Alinha no centro da coluna
  crossAxisAlignment: CrossAxisAlignment.stretch,   // (eixo cruzado, horizontal) Tenta ocupar a máxima largura
  children: <Widget?>[]
)
```

## Row

```dart
Row(
  mainAxisAlignment: ,
  crossAxisAlignment: ,
  children: , <Widget?>[]
)
```

## Expanded

Ocupa todo o espaço disponível, como a máxima largura disponivel

```dart
Expanded(
  child: <Widget?>,
  flex:	2  // peso, agora o filho tem duas vezes o tamanho, no caso de estar em	uma row com mais um Expanded
)
```

## Padding

Adiciona espacamento em volta de um widget

```dart
Padding(
  padding: EdgeInsets.all(32),
  child: <Widget?>
)
```

## SizedBox

Cria um widget invisível, adiciona um espeçamento em uma lista, também permite aumentar a altura do botão, colocando o botão como filho e definindo o height.

```dart
SizedBox(
  width: 64,
  height: 32,
  child: <Widget?>
)
```

## Divider

Divisão entre enementos

```dart
Divider(),
```

## Center

Cntraliza o filho no espaço disponível

```dart
Center(
  child: <Widget?>
)
```

## TextButton

```dart
TextButton(
  onPressed: (){},
  style: TextButton.styleFrom(
    primary: Colors.black,              // Ao clicar o efeito do botão fica com uma cor preta
    backgroundColor: Colors.white,
    fixedSize: const Size(100, 100),    // Cuidade pois não irá redimencionar
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
    shape: StadiumBorder(),         // borda redonda
  ),
)
```

## TextField

```dart
final emailController = TextEditingController();    // Controlador do TextField
```

```dart
TextField(
  controller: emailController,		// Especificando um TextEditingController atributo da classe
  decoration: InputDecoration(
    labelText: 'E-mail',
    hintText: 'exemplo@exemplo.com',
    border: OutlineInputBorder(),    // InputBorder.none
    errorText: 'Campo obrigatório',  // ou null
    prefixText: 'R\$ ',              // Text prefixado no início da caixa de texto
    suffixText: 'cm',                // Text prefixado no final da caixa de texto
    labelStyle: TextStyle(
      fontSize: 40,
      color: Color(0xff00d7f3),
    ),
  )
  obscureText: true,                    // oculta os caracteres
  obscuringCharacter: 's',              // define o caracter a exibir
  keyboardType: TextInputType.number,   // typo do teclado exibido
  style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: Colors.purple
  ),
  onChanged: (text){},                  // Ao mudar o conteúdo
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
