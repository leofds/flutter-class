[Dart](https://github.com/leofds/flutter-class/blob/master/dart/dart.md)

# Isolate (Concorrência)

![image](https://github.com/leofds/flutter-class/assets/5174326/5322987a-325f-4572-99cb-797da7c4da19 =250x250)

Dart é *single-thread*, que executa suas intruções de forma sequencial em uma região de memória dedicada e seu próprio *event-loop*.\

Para executar tarefas de forma paralela/*multi-thread* em Dart é necessário criar outro Isolate, utlizando outros núcleos de processadores se estiverem disponíveis.\

Os Isolates não compartilham memória, mas podem trocar mensagens através de métodos.\

