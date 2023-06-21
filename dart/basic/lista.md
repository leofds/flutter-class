[Dart](https://github.com/leofds/flutter-class/blob/master/dart/dart.md)

# Lista (Vetor/Array)

Vetores são Listas em Dart.

**Exemplo:** Lista de nomes

| 'Bia' | 'Leo' | 'Ana' | 'Jim' |
| ----- | ----- | ----- | ----- |
| 0 | 1 | 2 | 3 |

Índice de 0 à 3

```dart
var nomes = ['Bia', 'Leo', 'Ana', 'Jim'];
print(nomes[0]);    // Exibe no terminal o nome Bia
```

# Lista

```dart
List nomes = ['Bia', 'Leo', 'Ana', 'Jim'];

String nome = nomes[0]; // Acessando um item da lista
nomes[0] = 'Maria';     // Substituindo um item da lista
int len = nomes.length; // Quantidade de elementos na lista
nomes.add('José');      // Adicionando um item na lista
nomes.removeAt(0);  	  // Remove o primeiro item da lista
nomes.remove('Leo');    // Remove o nome da lista

List nomes = [];   		  // Lista vazia
```

**Conteúdo dinâmico**

```dart
var itens = ['Maria', 10, true, 0.5];
// equivalente a
List itens = ['Maria', 10, true, 0.5];
```

**Conteúdo restrito**

```dart
List<String> itens = ['Bia', 'Leo', 'Ana', 'Jim'];
```

## Iterando a lista

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
