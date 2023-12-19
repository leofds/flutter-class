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
class User {
  int? id;
  late String name;
  late String email;

  User({this.id, required this.name, required this.email});
}
```

Adicione os métodos de conversão de mapa.

```dart
class User {
  int? id;
  late String name;
  late String email;

  User({this.id, required this.name, required this.email});

  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'email': email};
  }

  static User fromMap(Map<String, dynamic> pessoa) {
    return User(
      id: pessoa['id'],
      name: pessoa['name'],
      email: pessoa['email'],
    );
  }

  @override
  String toString() {
    return 'User(id=$id, name=$name, email=$email)';
  }
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
abstract class UserDao {

  Future<User> save(User user);
  Future<List<User>> findAll();
  Future<void> remove(User user);
  Future<void> update(User user);

}
```

Implemente a classe concreta

```dart
class UserDaoDb implements UserDao {

  final _table = 'users';

  final Database db;

  UserDaoDb(this.db);

  @override
  Future<User> save(User user) async {
    user.id = await db.insert(_table, user.toMap());
    return user;
  }

  @override
  Future<List<User>> findAll() async {
    final result = await db.query(_table);
    return result.map((item) => User.fromMap(item)).toList();
  }

  @override
  Future<void> remove(User user) async {
    await db.delete(
      _table,
      where: 'id = ?',
      whereArgs: [user.id],
    );
  }

  @override
  Future<void> update(User user) async {
    await db.update(
      _table,
      user.toMap(),
      where: 'id = ?',
      whereArgs: [user.id],
    );
  }
}
```

## 5. Classe de criação/migração do Banco de Dados

```dart
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class LocalDatabase {

  static final Map<int, List<String>> _migrationScripts = {
    1: [
      'CREATE TABLE users (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT)',
      'CREATE TABLE history (id INTEGER PRIMARY KEY AUTOINCREMENT, log TEXT)',
    ],
    2: [
      'ALTER TABLE users ADD COLUMN email TEXT'
    ]
  };

  static Future<Database> initDatabase(String fname) async {
    return await openDatabase(
      join(await getDatabasesPath(), fname),
      version: _migrationScripts.length,
      onCreate: (db, version) async {
        for(final script in _migrationScripts.values) {
          for(String sql in script){
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

## 6. Utilizando o Banco de Dados

```dart
UserDao? userDao;

LocalDatabase.initDatabase('my_database.db').then((db) {
  userDao = UserDaoDb(db);
});

//...

userDao?.save(User(name: 'Leo', email: 'leonardo_.fernandes@hotmail.com'));
userDao?.findAll().then(print);
```
