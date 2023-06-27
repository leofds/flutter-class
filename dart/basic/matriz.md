[Dart](https://github.com/leofds/flutter-class/blob/master/dart/README.md)

# Matriz

Basicamente um vetor de vetores\
Vetor 2D (bidimencional)

| Leo | 20 | Blumenau |
| --- | -- | -------- |
| Ana | 21 | Timbó |
| Bia | 23 | Itajaí |

```dart
var pessoas = [['Leo', 20, 'Blumenau'],['Ana', 21, 'Timbó'],['Bia', 23, 'Itajaí']];
```

```dart
var pessoas = [
  ['Leo', 20, 'Blumenau'],
  ['Ana', 21, 'Timbó'],
  ['Bia', 23, 'Itajaí']
];

var nome1 = pessoas[0][0]; 	// Primeiro nome
var nome2 = pessoas[1][0]; 	// Segundo nome
var idade1 = pessoas[0][1]; // Primeira idade
pessoas[0][0] = 'Jim';  	// Substituindo o nome do primeiro item
```

**Lista restrita**

```dart
List<List<String>> dados = [];

List<List> pessoas = [
  ['Leo', 20, 'Blumenau'],
  ['Ana', 21, 'Timbó'],
  ['Bia', 23, 'Itajaí']
];
```

**Conversão de tipo**

```dart
String nome = pessoas[0][0] as String; // cast, conersão de tipo
int idade = pessoas[0][1] as int;
```
