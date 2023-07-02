
# Widgets

Relação dos principais Widgets e suas propriedades mais comuns

## Base

- [MaterialApp](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/materialapp.md)
- [Scaffold & AppBar & Drawer & FloatingActionButton](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/scaffold.md)
- [SafeArea](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/safearea.md)

## Layout

- [Container](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/container.md)
- [Column](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/column.md)
- [Row](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/ow.md)

---

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


## Expanded

Compartilha o espaço disponível do widget pai e força o widget filho a alterar sua largura/altura para preencher o espaço disponível.

```dart
Expanded(
  child: <Widget?>,
  flex:	2  // peso, agora o filho tem duas vezes o tamanho, no caso de estar em	uma row com mais um Expanded
)
```

## Flexible

Compartilha o espaço disponível do widget pai e mas **NÃO** força o widget filho a caber no espaço.

```dart
Flexible(
  child: <Widget?>,
  fit: FlexFit.loose,    // O tamanho preferido do widget é usado. (Padrão)
  fit: FlexFit.loose,    // Força o widget a preencher todo o espaço extra.
  flex
)
```

Para deixar dois widgets com o mesmo espaço em diferentes larguras de telas.

```dart
Flexible(
  flex: 1,
),
Flexible(
  flex: 1,
)
```

![image](https://github.com/leofds/flutter-class/assets/5174326/b2425152-1e39-4c63-857a-88d78f5911a2)

Usado com lista e shrinkWrap, permite que ela cresça e diminua conforme os elementos. Quando a lista alcançar o tamanho máximo ela para de crescer, e permite o scroll dos elementos.

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

## TextField

- Expande na horizontal.
- O TextField não possui uma largura intrínseca, ele se redimensiona para a largura do seu container pai.


```dart
TextField(
  controller: emailController,		// Especificando um TextEditingController atributo da classe
  focusNode: emailFocus,
  decoration: InputDecoration(
    labelText: 'E-mail',
    hintText: 'exemplo@exemplo.com',
    border: OutlineInputBorder(),    // InputBorder.none
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white)
    ),
    errorText: 'Campo obrigatório',  // ou null
    prefixText: 'R\$ ',              // Text prefixado no início da caixa de texto
    suffixText: 'cm',                // Text prefixado no final da caixa de texto
    labelStyle: TextStyle(
      fontSize: 40,
      color: Color(0xff00d7f3),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff00d7f3),
        width: 2
      ),
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
  onSubmitted: (text){},                // Ao clicar no enter
  onChanged: (text){},                  // Ao mudar o conteúdo
)
```
Controlador e focus

```dart
final emailController = TextEditingController();    // Controlador do TextField
final emailFocus = FocusNode();
```

Foco no campo de texto

```dart
FocusScope.of(context).requestFocus(emailFocus);
```

Decorations

```dart
InputDecoration.collapsed(hintText: "Enviar uma mensagem")
```

> **_NOTA:_** Para usar o `TextField` dentro de um `Row`, você precisa envolver o `TextField` com um `Expanded`, `Flexible` ou com `Container`/`SizedBox` provendo `width`, pois os dois expandem na horizontal. 

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
