# Conversão de tipos

## String -> num

Valores numéricos informados pelo usuário com sdtin.readLineSync()! precisam ser convertidos para int ou double, 
para que possam ser usados em cálculos ou em comparações como < > <= >=.

```dart
// A função parse realisa esta operação.
int numero1 = int.parse('10');
double numero2 = double.parse('1.27');
```

## num -> String 

```dart
double valor = 8.5013;
print(valor.toString());          // 8.5013
print('${valor}');                // 8.5013
print(valor.toStringAsFixed(2));  // 8.50

int number = 128;
print(number.toRadixString(16));  // 80
```

## double -> int

```dart
double valor = 8.5;

print(valor.toInt());     // 8 - Trunca o valor decimal
print(valor.truncate());  // 8 - Trunca o valor decimal
print(valor.round());     // 9 - Arredonda para o mais próximo
print(valor.ceil());      // 9 - Arredodna pra cima
print(valor.floor());     // 8 - Arredonda para baixo
```
