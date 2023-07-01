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
  MaterialPageRoute(builder: (context) => Home()), (route) => false
);
```

## Pop

Retornando à página anterior

```dart
Navigator.pop(context);
```

# Retornando objetos

```dart
final myObj = await Navigator.push(context,
 MaterialPageRoute(builder: (context) => NewPage())
);

if(myObj != null){

}
```

## Retornando o objeto

```dart
Navigator.pop(context, _myObjt);
```

## Evento ao clicar na seta de voltar

O primeiro Widget deve ser o WillPopScope

```dart
WillPopScope(
  onWillPop: ()async{return true},
  child: <Widget?>
)
```
