[Widgets](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/README.md)

## MaterialApp

Widget principal do aplicativo, trás navegação, temas, configurações e localização (tradução)

Material Design Language foi criado para qualquer plataforma. não apenas Android. Quando você escreve um Material App em Flutter, ele terá o Material look and feel em todos os devices, inclusive iOS.

Ao utilizar o CupertinoApp no Android as fontes serão diferente por questões de licenciamento da Apple.

```dart
MaterialApp(
  debugShowCheckedModeBanner: false,    // Retira a tarja de debug
  title: "Meu App",
  home: <Widget?>,

  theme: ThemeData(
    primaryColor: Colors.blue,
    iconTheme: IconThemeData(
      color: Colors.blue
    )
  ),
)
```
