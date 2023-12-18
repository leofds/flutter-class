[Flutter](https://github.com/leofds/flutter-class/blob/master/flutter/README.md)

# Banco de Dados

Persistindo dados com SQLite

## 1. Adicione a dependência sqflite e path

```whell
flutter pub add sqflite path
```

## 2. Crie a classe datamodel

Esta classe basicamente representa uma tabela do banco, onde os atributos são as colunas do banco.

```dart
class Pessoa {
  final int? id;
  late String nome;
  late String email;

  Pessoa({
    this.id,
    required this.nome,
    required this.email
  });
}
```

## 3. Inicialização

Garanta que o mecanismo de vinculo com código nativo esteja inicializado antes de utilizar o banco de dados;

```dart
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}
```

## 4. Criando o DAO (Data Access Object)




