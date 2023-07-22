[Flutter](https://github.com/leofds/flutter-class/blob/master/flutter/README.md)

# Como fazer

## Implementar o initState

Método executado uma única vez quando após a criação do widget

```dart
@override
void initState() {

}
```

## Atualizar um Widget stateFul

```dart
setState((){ 
  
});
```

## TextField bordas arredondadas

```dart
TextField(
  decoration: InputDecoration(
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(100.0)),
  ),
),
```

## ElevatedButton bordas arredondadas

```dart
ElevatedButton(
  onPressed: (){},
  child: Text('Press'),
  style: ElevatedButton.styleFrom(
      shape: StadiumBorder(), primary: Colors.orange),
),
```

## Esconder o teclado

```dart
FocusScope.of(context).requestFocus(FocusNode());
```

## Container com imagem de fundo

```dart
Container(
  width: 50,
  height: 100,
  decoration: BoxDecoration(
    image: DecorationImage(
      image: NetworkImage('https://'),              // imagem da internet
      image: AssetImage('assets/images/img.png'),   // imagem da pasta
      fit: BoxFit.fill
    ),
  ),
)
```

## Container bordas arredondadas

```dart
Container(
  width: ,
  height: ,
  decoration: BoxDecoration (
    borderRadius: BorderRadius.circular(4),     // container arredondado
    color: Colors.grey[200],                    // com box decoration o container não pode ter color
  )
)
```
