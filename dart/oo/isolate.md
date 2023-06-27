[Dart](https://github.com/leofds/flutter-class/blob/master/dart/README.md)

# Isolate (Concorrência)

<img src="https://github.com/leofds/flutter-class/assets/5174326/5322987a-325f-4572-99cb-797da7c4da19" width="150">

Dart é *single-thread*, que executa suas intruções de forma sequencial em uma região de memória dedicada e seu próprio *event-loop*.\

Para executar tarefas de forma paralela/*multi-thread* em Dart é necessário criar outro Isolate, utlizando outros núcleos de processadores se estiverem disponíveis.\

Os Isolates não compartilham memória, mas podem trocar mensagens através de métodos.\

## Isolate Single Message

A figura abaixo ilustra a comunicação entre o Isolate principal e o Worker Isolate.

<img src="https://github.com/leofds/flutter-class/assets/5174326/d7d7a066-0f1f-472d-a7d8-9e327fc04bea" width="500">

**exemplo**

```dart
void main(List<String> args) async {
  final strData = await _readInBackground();
  print('strData: $strData');
}

Future<String> _readInBackground() async {
  final p = ReceivePort();
  Isolate.spawn(_readFile, p.sendPort);
  return await p.first as String;
}

Future<void> _readFile(SendPort p) async {
  final fileData = await File('D:/nome.txt').readAsString();
  Isolate.exit(p, fileData);
}
```

### Isolate Multiple Messages

É possível enviar várias mensagens.

<img src="https://github.com/leofds/flutter-class/assets/5174326/4a84321d-74f3-4666-adc0-521575814b32" width="500">

**exemplo**

Este exemplo lê o conteúdo da lista de arquivos
Adicione a seguinte dependência: **async: ^2.9.0**

```dart
import 'dart:io';
import 'dart:isolate';
import 'package:async/async.dart';

void main(List<String> args) async {
  List<String> listFiles = ['d:/nome.txt', 'd:/carro.txt'];
  await for (final String strData in _readInBackground(listFiles)) {
    print('File content: $strData');
  }
}
```

Função no Isolate principal que se comunica com o outro Isolate.

```dart
Stream<String> _readInBackground(List<String> filenames) async* {
  final p = ReceivePort();
  await Isolate.spawn(_readFile, p.sendPort);

  final events = StreamQueue<dynamic>(p);
  SendPort sendPort = await events.next;

  for (String fname in filenames) {
    sendPort.send(fname);
    String message = await events.next;
    yield message;
  }
  sendPort.send(null);
  await events.cancel();
}
```

```dart
Future<void> _readFile(SendPort p) async {
  final commandPort = ReceivePort();
  p.send(commandPort.sendPort);
  await for (final message in commandPort) {
    if (message is String) {
      try {
        final contents = await File(message).readAsString();
        p.send(contents);
      } catch (e) {
        print(e);
      }
    } else if (message == null) {
      break;
    }
  }
  Isolate.exit();
}
```

