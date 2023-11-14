[Dart](https://github.com/leofds/flutter-class/blob/master/dart/README.md)

# Mapa

Coleção que armazena um conjunto de valores **chave - valor**.

**Exemplo 1**

```dart
var detalhes = {'user': 'admin', 'pass': '1234'};

print(detalhes['user']);		// Lê o valor da chave
print(detalhes['pass']);

detalhes['user'] = 'Mariano';	// Sobrescreve o valor da chave
```

**Exemplo 2**

```dart
Map<String, double> valores = {
  'comum': 125.0,
  'colaborador': 200.0
};

valores['vip'] = 350.0;             	// Adiciona um valor para a chave 'vip'
double? valorVip = valores['vip'];  	// Lê o valor da chave 'vip'

print(valores.containsKey('vip'));  	// Verifica se a chave existe
print(valores.containsValue(120.0));  	// Verifica se o valor existe no mapa
print(valores.length);  				// Quantidade de conjnto chave-valor no mapa
```

## Percorrendo os items do mapa

```dart
valores.forEach((key, value) {
  print('chave=$key, valor=$value');
});
```

## Converter mapa em lista

```dart
Map<String, double> valores = {
  'comum': 125.0,
  'colaborador': 200.0,
  'vip': 350.0
};

List<String> listaDescricao = valores.keys.toList();
List<double> listaValores = valores.values.toList();
```
