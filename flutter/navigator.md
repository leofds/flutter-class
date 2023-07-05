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

> **_ATENÇÃO:_** Não é recomendado utilizar rota nomeada em novos desenvolvimentos!

- [Navegando com rotas nomeadas](https://github.com/leofds/flutter-class/blob/master/flutter/navigator_old.md)
