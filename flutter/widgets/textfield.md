[Widgets](https://github.com/leofds/flutter-class/blob/master/flutter/widgets.md)

# TextField

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
