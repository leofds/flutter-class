# Variáveies

Variáveis são um espaço na memória para armazenar valores de acordo com o tipo da variável.

## Declarando variáveis

`<tipo> <nome-da-variável> = <inicialização>`

```dart
int valor = 10;           // Valores inteiros
double saldo = 15.55;     // Valores reais 
String nome = 'Maria';    // Textos
bool ligado = true;       // Valores booleanos (verdadeiro/falso)
```

## Escrevendo no terminal o conteúdo de uma variável

**Interpolação**

Utilizamos o símbolo $ seguido do nome da variável dentro da String, ou seja, dentro das aspas, para que o valor da variável seja lido a incluído no texto.

```dart
int valor = 10;
print('O valor é: $valor');   //O valor é: 10
```

**Concatenação (não recomendado)**

Utilizamos o símbolo + entre duas string para juntá-las (concatenar) em apenas uma string.

```dart
String nome = 'Maria';
print('O nome é: ' + nome);   //O nome é: Maria
```

