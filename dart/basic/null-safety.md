# Null-safety

Significa que as variáveis não aceitam valor nulo (null) por padrão.

```dart
int valor;
print(valor);	  // Acusa erro porque valor está nulo
```

## Variáveis Nullable (?)

São variáveis que aceitam valores nulos. Basta adicionar ? ao tipo.

```dart
int? valor;
String? nome;

print(valor); // exibe null
print(nome);  // exibe null
```

## Operador Null assertion (!)

Converte uma variável nullable para non-nullable, basta adicionar ! a variável.

```dart
String? nomeRecebido;
int? idadeRecebida;

nomeRecebido = 'Leo';

String nome = nomeRecebido!;
int idade = idadeRecebida!;	  // Acusa erro somente ao executar pois está nulo
```

## Conversão variáveis Nullable -> Non-Nullable

Ao realizar o teste se nulo antes de utilizar a variável nula ocorre a conversão para non-nullable.

```dart
String? nomeRecebido;
if (nomeRecebido != null) {
  String nome = nomeRecebido;
  print(nome);
}
```

## Operador Nul-aware (??)

Este operador permite que você atribua um valor se a variável for nula.

```dart
x = y ?? z; 	// se y for nulo atribui z para x ao invés do y

x ??= y;  	// atribui y para x se x for null

x?.foo(); 	// chama a função foo somente se x não for null
```
