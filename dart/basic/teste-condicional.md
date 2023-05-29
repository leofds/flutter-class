# Teste/Estrutura condicional (IF)

O comando IF efetua um teste do valor/condição que está entre os parêntese ( ), se for verdadeiro (true) o bloco de código entre as chaves { } será executado.

```dart
int idade = 18;

if (idade < 18) {
  print('Você é menor de idade, entrada proibida!');
}

/*
Este algorítmo é executado da seguinte forma:
Se a idade for menor que 18 então escreve no terminal a mensagem 
'Você é menor de idade, entrada proibida!'
*/
```

# Teste condicional composto (IF ELSE)

O comando ELSE diretamente após o IF tem seu bloco de código executado se o teste do IF for falso.

```dart
int media = 5;

if (media >= 7) {
  print('Aluno aprovado');
}else{
  print('Aluno reprovado');
}

/*
Se a média for maior ou igual a 7 então escreve no terminal a mensagem 
‘Aluno aprovado’ se não, escreve a mensagem ‘Aluno reprovado.’
*/
```

# Teste condiciona aninhado (IF ELSE IF)

O comando IF após o ELSE efetua um novo teste condicional para executar o bloco de código.

```dart
if (media >= 7) {
  print('Aprovado');
} else if (media > 5) {
  print('Em recuperação');
} else {
  print('Reprovado');
}

/*
Se a média for maior ou igual a 7 então escreve no terminal a mensagem 
‘Aprovado’ se não, se a média for maior que 5 então escreve no terminal a mensagem ‘Em recuperação’, se não escreve a mesagem ‘Reprovado’.
*/
```
