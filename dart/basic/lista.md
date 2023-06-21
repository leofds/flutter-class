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

### whereType

Retorna um interable com todos os valores do tipo específico.

```dart
List myList = ['Leo', 1, 'Bia', 2, 'Joe'];
Iterable it = myList.whereType<int>();
print(it); // (1, 2)
```

### getRange

Retorna os elementos a partir de um range start e end.

```dart
List myList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
print(myList.getRange(4, 8)); // (5, 6, 7, 8)
```

### replaceRange

Este método ajuda a atualizar elementos em uma lista.

```dart
List myList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
myList.replaceRange(2, 6, [100, 200]);
print(myList); // [1, 2, 100, 200, 7, 8, 9, 10]
```

### firstWhere

Retorna o primeiro elemento da lista que a condição for satisfeita.

```dart
List myList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
final value = myList.firstWhere((element) => element > 3);
print(value); // 4
```

### lastWhere

Retorna o último elemento da lista que a condição for satisfeita.

```dart
List myList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
final value = myList.lastWhere((element) => element > 3);
print(value); // 10
```

### where

Retorna uma nova lista incluindo todos os elementos que a condição for satisfeita.

```dart
List myList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
final value = myList.where((element) => element > 3).toList();
print(value); // [4, 5, 6, 7, 8, 9, 10]
```

### singleWhere

Retorna o elemento que corresponder a condição. Um exceção ocorrerá se o elemento estiver diplicado na lista. Nesse caso firstWhere pode ser utilizado.

```dart
List myList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
final value = myList.singleWhere((element) => element == 4);
print(value); // 4
```

### fold

Retorna um valor único iterando todos os valores de uma lista.

```dart
List<int> myList = [1, 2, 3, 4, 5];
final value = myList.fold<int>(0, (previousValue, element) => previousValue + element);
print(value); // 15
```

### followedBy

Adiciona novos elementos na lista.

```dart
List<int> myList = [1, 2, 3, 4, 5];
print(myList.followedBy([10, 20])); // (1, 2, 3, 4, 5, 10, 20)
```

### take

Retorna um novo Iterable a partir do inice 0 até a quantidade informada.

```dart
List myList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
print(myList.take(4).toList()); // [1, 2, 3, 4]
```

### skip

Ignora os elementos do indice 0 até a quantidade de elementos informada. 

```dart
List myList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
print(myList.skip(4).toList()); // [5, 6, 7, 8, 9, 10]
```

### removeWhere

Remove os elementos da lista em que a condição for satisfeita.

```dart
List myList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
myList.removeWhere((element) => element % 2 == 0);
print(myList);  // [1, 3, 5, 7, 9]
```
