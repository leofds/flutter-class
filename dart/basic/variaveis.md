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

## Variáveis dinâmicas

```dart
var nome = "Leo";         // Não permite trocar o tipo após atribuição
dynamic din = "Curso";    // Permite trocar o tipo da variável
num numero = 1.4;         // número inteiro ou real
```

## Escrevendo no terminal o conteúdo de uma variável

**Interpolação**

Utilizamos o símbolo $ seguido do nome da variável dentro da String, ou seja, dentro das aspas, para que o valor da variável seja lido a incluído no texto.

```dart
int valor = 10;
print('O valor é: $valor');   // Exibe: O valor é: 10
```

**Concatenação (não recomendado)**

Utilizamos o símbolo + entre duas string para juntá-las (concatenar) em apenas uma string.

```dart
String nome = 'Maria';
print('O nome é: ' + nome);   // Exibe: O nome é: Maria
```

## Substituindo o conteúdo de uma variável

Uma variável mantém o último valor que foi atribuído a ela.

```dart
int valor = 10;   				    // Inicializado com 10
valor = 20;       				    // Atribuído 20 à variável
print('O valor é: $valor');   // Exibe: O valor é: 20
```
