[Flutter](https://github.com/leofds/flutter-class/blob/master/flutter/README.md)

# Assets

Assets são os recursos armazenados no App como imagens, fontes, arquivos em geral.

## 1. Crie o diretório assets

Na raiz do projeto crie o diretório assets. Você pode incluir subdiretórios para separar imagens de fonts por exemplo.

![image](https://github.com/leofds/flutter-class/assets/5174326/68929342-6538-40c8-8bf3-bb22898f5e34)

## 2. Atualize o pubspec

Edite o arquivo pubspec.yaml na raiz do projeto, adicionando o diretório assets criado.

**Cuidado!** Os espaços no início de cada linha (identação) no arquivo .yaml são importantes para determinar a relação das pripriedades. 

```yaml
flutter:

  # The following line ensures that the Material Icons font is
  # included with your application, so that you can use the icons in
  # the material Icons class.
  uses-material-design: true

  assets:
    - assets/images/

  fonts:
    - family: MinhasFontes
      fonts:
        - asset: assets/fonts/minha_fonte.ttf
```
