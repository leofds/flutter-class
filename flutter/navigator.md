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

# Navegando com rotas nomeadas

```dart
MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => const Home(),
    '/second': (context) => const SecondPage(),
  }
)
```

```dart
Navigator.pushNamed(context, '/second');
```

# Passando argumentos para uma rota nomeada

## 1. Defina os argumentos que deseja passar, crie uma classe para armazená-los

```dart
class PageArguments {
  final String title;
  final String message;

  PageArguments(this.title, this.message);
}
```

## 2. Recebendo os argumentos 

```dart
@override
Widget build(BuildContext context) {

  final args = ModalRoute.of(context)?.settings.arguments as PageArguments?;
  if(args != null){
```

## 3. Navegando para o widget

```dart
Navigator.pushNamed(context, '/second',arguments: PageArguments('Segunda pagina','Com argumentos'));
```

# Alternativa, extraindo argumentos com onGenerateRoute

```dart
MaterialApp(
  initialRoute: '/',
  onGenerateRoute: (settings){
    if(settings.name == '/'){
      return MaterialPageRoute(builder: (context) => Home());
    }
    if(settings.name == '/second'){
      final args = ModalRoute.of(context)?.settings.arguments as PageArgument?;
      return MaterialPageRoute(
        builder: (context) {
          return SecondPage(pageArgument: args;
        }
      );
    }
  },
);
```

## Declare o argumento no construtor da classe

```dart
class SecondPage extends StatefulWidget {

  PageArgument? arg;

  SecondPage({super.key, this.arg});
```

```dart
@override
 Widget build(BuildContext context) {
   final args = widget.contato;
``´
