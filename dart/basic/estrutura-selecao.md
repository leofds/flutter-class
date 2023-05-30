# Estrutura de seleção (SWITCH)

O comando switch efetua a comparação do valor/variável entre os parênteses ()
com o valor após a palavra case, se for igual, o códido após os : é executado até encontrar a palavra **break**. 
Se não corresponder a nenhum caso, o código **default** é executado.

```dart
int codigo = 1;
switch (codigo) {
  case 1:
    print('Selecionado opção 1');
    break;
  case 2:
    print('Selecionado opção 2');
    break;
  default:
    print('Opção inválida');
}
```
