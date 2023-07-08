[Widgets](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/README.md)

# TextFormField

Semelhante ao TextField mas, possui a propriedade validator, desde que esteja dentro de um Form para validar chamar _formKey.currentState!.validate()

```dart
TextFormField(
  validator: (value) {
    if( <invalido> ){
      return "Informe o valor";  // Mensagem a ser exibida em vermelho em baixo da caixa caso a validação falhe
    }
  }
)
```

Verificando se o form é válido

```dart
if(_formKey.currentState!.validate()) {
```
