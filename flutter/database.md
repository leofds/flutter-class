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

Defina a interface

```dart
abstract class PessoaBao {

  Future<Pessoa> salvar(Pessoa pessoa);
  Future<List<Pessoa>> buscarTodos();
  Future<void> remover(Pessoa pessoa);
  Future<void> atualizar(Pessoa pessoa);

}
```

Implemente a classe concreta

```dart

```

## 5. Classe de criação/migração do Banco de Dados

```dart
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class LocalDatabase {

  static final Map<int, List<String>> _migrationScripts = {
    1:  [
      'CREATE TABLE users (id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT)',
      'ALTER TABLE users ADD COLUMN email TEXT'
    ],
    2:  [
      'ALTER TABLE users ADD COLUMN phone TEXT'
    ]
  };

  static Future<Database> initDatabase(String fname) async {
    return await openDatabase(
      join(await getDatabasesPath(), fname),
      version: _migrationScripts.length,
      onCreate: (db, version) async {
        for(final scripts in _migrationScripts.values) {
          for(String sql in scripts){
            await db.execute(sql);
          }
        }
      },
      onUpgrade: (db, oldVersion, newVersion) async {
        for (int i = oldVersion + 1; i <= newVersion; i++) {
          for(String sql in (_migrationScripts[i] as List<String>)) {
            await db.execute(sql);
          }
        }
      }
    );
  }
}
```
