[Flutter](https://github.com/leofds/flutter-class/blob/master/flutter/README.md)

# Cores

## Definindo Cores

```dart
Colors.red                      // Cor pré definida
Colors.red[200]                 // Cor com diferentes tons
Colors.red.withAlpha(100)       // Cor com transparência, valor de 0 à 255
Colors.red.withOpacity(0.5)     // Cor com opacidade, valor de 0 à 1.0
Color(0xffff0000),              // Cor em hexadeciomal: Alpha, Red, Green ,Blue (ARGB)
Color.fromARGB(255, 255, 0, 0)  // Cor a partir de inteiros ARGB com alfa, valor de 0 à 255
Color.lerp(Colors.white, Colors.red, 0.5);  // Retorna uma cor interpolada entre as duas
```
