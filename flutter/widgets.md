
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
  child: <Widget?>,
  width: 50,
  height: 100,                        // se não for definido um tamanho ele se auto ajusta ao conteúdo
  padding: EdgeInsets.all(10.0),      // espeçamento dentro do container
  margin: EdgeInsets.only(left: 10),  // semelhante ao padding porém faz o afastamento fora do container
  decoration: BoxDecoration(
    image: DecorationImage(
      image: NetworkImage('https://'),              // imagem da internet
      image: AssetImage('assets/images/img.png'),   // imagem da pasta
      fit: BoxFit.fill
    ),
  ),
)
```
