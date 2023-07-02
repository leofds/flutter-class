# Container

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

Container com imagem no fundo
```dart
Container(
  ...
  decoration: BoxDecoration(
    image: DecorationImage(
      image: NetworkImage('https://'),              // imagem da internet
      image: AssetImage('assets/images/img.png'),   // imagem da pasta
      fit: BoxFit.fill
    ),
  ),
)
```

Container com bordas arredondadas
```dart
Container(
  ...
  decoration: BoxDecoration (
    borderRadius: BorderRadius.circular(4),     // container arredondado
    color: Colors.grey[200],                    // com box decoration o container não pode ter color
  )	
)
```
