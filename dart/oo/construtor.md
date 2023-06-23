[Dart](https://github.com/leofds/flutter-class/blob/master/dart/dart.md)

# Construtor

Função **com o mesmo nome da classe**, chamada durante a instanciação da classe (durante a criação do objeto).

```dart
class Pessoa {
  String? nome;
  int? idade;

  Pessoa(String nome, int idade) {
    this.nome = nome;
    this.idade = idade;
  }
}
```

```dart
void main() {
  Pessoa pessoa = Pessoa('Maria', 20);
}
```

## Construtor (formais de inicialização)

Utilizado quando o parâmetro corresponde a um atributo.\
Torna o código mais conciso.

```dart
class Pessoa {
  String? nome;
  int? idade;

  Pessoa(this.nome, this.idade);
}
```

## Construtor (parâmetros posicionais)

Utiliza [ ] na lista de parâmetros. Não é permitido alterar a ordem dos arâmetros.

```dart
class Pessoa {
  String? nome;
  int? idade;

  Pessoa([this.nome, this.idade]);
}
``

```dart
void main(List<String> arguments) {
  Pessoa pessoa1 = Pessoa();
  Pessoa pessoa2 = Pessoa('Maria');
  Pessoa pessoa3 = Pessoa('Maria', 20);
}
```

## Construtor (parâmetros nomeados)

Utiliza { } na lista de parâmetros, torna-se obrigatórios com a palavra **required**

```dart
class Pessoa {
  String? nome;
  int? idade;

  Pessoa({required this.nome, this.idade});
}
```

```dart
void main(List<String> arguments) {
  Pessoa pessoa2 = Pessoa(nome: 'Maria');
  Pessoa pessoa3 = Pessoa(nome: 'Paulo', idade: 20);
}
```

## Construtor nomeado

```dart
class Pessoa {
  String nome;
  bool casado = false;

  Pessoa({required this.nome, required this.casado});

  Pessoa.casada({required this.nome}) {
    casado = true;
  }
}
```

```dart
void main() {
  Pessoa pessoa1 = Pessoa.casada(nome: 'Leo');
}
```

## Redirecionando construtor

Um construtor pode chamar outro construtor.

```dart
class Veiculo {
  String? nome;
  String? combustivel;

  Veiculo({this.nome, this.combustivel});

  Veiculo.gasolina({String? nome}) 
    : this(nome: nome, combustivel: 'Gasolina'); // Redirecionando

  Veiculo.diesel({String? nome}) 
    : this(nome: nome, combustivel: 'Diesel'); // Redirecionando
}
```
