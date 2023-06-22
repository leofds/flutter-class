[Dart](https://github.com/leofds/flutter-class/blob/master/dart/dart.md)

# Classe

Especificação (modelo) de um objeto, conjunto de atributos (características) e métodos (ações) que um objeto deve possuir.

```dart
class Pessoa {
}
```

## Atributos

São variáveis de um objeto.
Também conhecido como variável de instância, é uma variável cujo valor é específico ao objeto e não a classe.

```dart
class Pessoa {
  String? nome;
  int? idade;
}
```

## Métodos

São funções de um objeto.
Assim como uma função, um método pode possuir parâmetros e retorno.

```dart
class Pessoa {
  void acordar() {
    print('Bom dia!');
  }
}
```

## Instância

Instanciar uma classe, significa criar um objeto a partir de uma classe.

```dart
Pessoa pessoa = Pessoa(); 		  // Instânciando a classe
Pessoa pessoa2 = new Pessoa(); 	// a palavra new é opcional
```

### Exemplo

```dart
class Pessoa {

  String? nome;
  int? idade;

  void apresentar() {
    print('Eu sou $nome e tenho $idade anos');
  }
}
```

```dart
void main() {
  Pessoa pessoa = Pessoa(); // Instânciando a classe
  
  pessoa.nome = 'Leo';      // Definindo o valor do atributo
  print(pessoa.idade);      // Lendo o valor do atributo
  
  pessoa.apresentar();      // Chamando um método
}
```
