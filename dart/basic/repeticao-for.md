[Dart](https://github.com/leofds/flutter-class/blob/master/dart/README.md)

# Laço de repetição Para (for)

**Para** executar o bloco de código entre { } faça:

Passos:
1. inicialização da variável
2. teste condicional para verificar se o bloco de código será executado
3. execução do bloco de código entre { }
4. incremento da variável
5. retorna ao passo 2

```dart
for (int contador = 0; contador < 3; contador++) {
  print(contador);
}
```

Lista
```dart
List<String> nomes = ['Bia', 'Leo', 'Ana', 'Jim'];

// for clássico
for (int i = 0; i < nomes.length; i++) {
  print(nomes[i]);
}

// loop for aprimorado
for (final nome in nomes) {
  print(nome);
}

// função for each
nomes.forEach((nome) {
  print(nome);
});
```
