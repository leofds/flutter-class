[Flutter](https://github.com/leofds/flutter-class/blob/master/flutter/README.md)

# Como fazer

## Definindo Cores

```dart
Colors.red                      // Cor pré definida
Colors.red[200]                 // Cor com diferentes tons
Colors.red.withAlpha(100)       // Cor com transparência, valor de 0 à 255
Colors.red.withOpacity(0.5)     // Cor com opacidade, valor de 0 à 1.0
Color(0xffff0000),              // Cor em hexadeciomal: (Alpha, R, G ,B)
Color.fromARGB(255, 255, 0, 0)  // Cor a partir de inteiros ARGB
```

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
