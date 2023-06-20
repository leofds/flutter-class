# Operadores de teste de tipo

**as**, **is**, **!is** úteis para verificar o tipo em tempo de execução.

```dart
String nome = pessoas[0][0] as String;  // Cast, conversão de tipo

import 'package:lib2/lib2.dart' as lib2;	// Prefixo em uma Library

if(nome is String){}				// true se o tipo for String

if(nome !is double){}				// true se o tipo não for double
```
