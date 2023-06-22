# Get e Set

**Atributos privaods** são definidos adicionando o caracter _ no início do nome do atributo (ex: String? _nome). Dessa forma este atributo não pode ser utilizado fora da classe.

Para acessar atributos privados fora da classe recomenda-se o uso de métodos **set** e **get**.

```dart
class Pessoa {
  String? _nome;

  String? get nome {
    return _nome;
  }

  set nome(String? value) {
    _nome = nome;
  }
}
```

```dart
void main() {
  Pessoa pessoa = Pessoa();
  pessoa.nome = 'Leo';
  print(pessoa.nome);
}
```

### Conceito: Encapsulamento

Restringir o acesso direto aos atributos, sendo necessário métodos para este acesso. \
Ao criar variáveis privadas e métodos set e get estamos utilizando o encapsulamento.


