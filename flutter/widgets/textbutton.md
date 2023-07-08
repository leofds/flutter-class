[Widgets](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/README.md)

# TextButton

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
