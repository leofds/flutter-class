# Navegando para uma nova tela e voltando

## Push

Abrindo página

```dart
Navigator.push(context,
 MaterialPageRoute(builder: (context) => NewPage())
)
```

Push removendo as rotas anteriores

```dart
Navigator.of(context).pushAndRemoveUntil(
  MaterialPageRoute(builder: (context) => NewPage()), (route) => false
);
```

## Pop

Retornando à página anterior

```dart
Navigator.pop(context);
```

## Retornando um objeto

```dart
Navigator.pop(context, _myObjt);
```

## Obtendo o objeto retornado

```dart
final myObj = await Navigator.push(context,
 MaterialPageRoute(builder: (context) => NewPage())
);

if(myObj != null){

}
```

## Evento ao clicar na seta de voltar

O primeiro Widget deve ser o WillPopScope

```dart
WillPopScope(
  onWillPop: () async {
    return true;
  },
  child: <Widget?>
)
```

## Passando argumentos para uma rota

**1. Defina os argumentos que deseja passar, crie uma classe para armazená-los**

```dart
class PageArguments {
  final String title;
  final String message;

  PageArguments(this.title, this.message);
}
```

**2. Recebendo os argumentos no construtor**

```dart
class NewPage extends StatefulWidget {
  NewPage({super.key, this.args});
  
  PageArguments? args;

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {

	PageArguments? _args;

	@override
	initState(){
		_args = widget.args;
	}
```

**3. Abrindo a página enviando argumentos**

```dart
Navigator.push(context,
 MaterialPageRoute(builder: (context) => NewPage(args: PageArguments(title: 'Titulo', message: 'Mensagem')))
)
```

# Navegando com rotas nomeadas

> **_ATENÇÃO:_** Não é recomendado utilizar rota nomeada em novos desenvolvimentos!

- [Navegando com rotas nomeadas](https://github.com/leofds/flutter-class/blob/master/flutter/navigator_old.md)
