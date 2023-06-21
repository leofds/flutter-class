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

--- 

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

## Percorrendo a lista

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

## Funções de Lista

### reduce

Reduz uma lista a um único valor combinando os valores da coleção através de uma função.

```dart
List<int> myList = [1, 2, 3, 4, 5];
final result = myList.reduce((value, element) => value + element);
print(result); // 15
```

### any

Retorna true se a condição for satisfeita para qualquer um dos elementos.

```dart
List<int> myList = [1, 2, 3, 4, 5];
final result = myList.any((element) => element == 3);
print(result); // true
```

### map

Retorna uma nova lista com os elementos retornados da função.

```dart
List<int> myList = [1, 2, 3, 4, 5];
final result = myList.map((element) => element + 1);
print(result);  // (2, 3, 4, 5, 6)
```

### every

Retorna true se a condição for safisfeita para todos os elementos.

```dart
List<String> myList = ['Ana', 'Aline', 'Amanda'];
final result = myList.every((element) => element.startsWith('A'));
print(result);  // true
```

### sublist

Retorna uma nova lista contendo os elementos a partir do íncie start e end.

```dart
List myList = [10, 20, 30, 40, 50];
print( myList.sublist(1, 4) );   // [20, 30, 40]
print( myList.sublist(3) );     // [40, 50]
```

### shuffle

Ordena os elementos de forma aletória.

```dart
List myList = [1, 2, 3, 4, 5];
myList.shuffle();   	// Embaralhar
print(myList);		    // [5, 2, 4, 3, 1]
```

### reversed

Inverte a ordem da lista.

```dart
List myList = [1, 2, 3, 4, 5];
print(myList.reversed.toList());  // [5, 4, 3, 2, 1]
```

### asMap

Retorna uma representação de mapa da lista.

```dart
List myList = ['Leo', 'Ana', 'Bia', 'Jim', 'Joe'];
Map myMap = myList.asMap();
print(myMap); // {0: Leo, 1: Ana, 2: Bia, 3: Jim, 4: Joe}
```
