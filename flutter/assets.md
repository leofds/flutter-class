[Flutter](https://github.com/leofds/flutter-class/blob/master/flutter/README.md)

# Assets

Assets são os recursos armazenados no App como imagens, fontes, arquivos em geral.

## 1. Crie o diretório assets

Na raiz do projeto crie o diretório assets. Você pode incluir subdiretórios para separar imagens de fonts por exemplo.

![image](https://github.com/leofds/flutter-class/assets/5174326/68929342-6538-40c8-8bf3-bb22898f5e34)

## 2. Atualize o pubspec

Edite o arquivo pubspec.yaml na raiz do projeto, adicionando o diretório assets criado para imagens e fontes.

**Cuidado!** A identação do arquivo .yaml é importante para determinar a relação entre as pripriedades. 

```yaml
flutter:

  # The following line ensures that the Material Icons font is
  # included with your application, so that you can use the icons in
  # the material Icons class.
  uses-material-design: true

  assets:
    - assets/images/

  fonts:
    - family: MinhaFonte
      fonts:
        - asset: assets/fonts/minha_fonte.ttf
```

## 3. Como utilizar

Utilize o [Widget Image](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/image.md) para exibir uma imagem.

```dart
Image.asset('assets/images/fundo.png'),
```

Informe o nome da família da font no Widget Text para alterar a fonte.

```dart
Text(
  'Olá',
  style: TextStyle(
    fontFamily: 'MinhaFonte'
  ),
)
```
