[Widgets](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/README.md)

# Expanded & Flexible

![image](https://github.com/leofds/flutter-class/assets/5174326/b2425152-1e39-4c63-857a-88d78f5911a2)

Usado com lista e shrinkWrap, permite que ela cresça e diminua conforme os elementos. Quando a lista alcançar o tamanho máximo ela para de crescer, e permite o scroll dos elementos.

## Expanded

Compartilha o espaço disponível do widget pai e força o widget filho a alterar sua largura/altura para preencher o espaço disponível.

```dart
Expanded(
  child: <Widget?>,
  flex:	2  // peso, agora o filho tem duas vezes o tamanho, no caso de estar em	uma row com mais um Expanded
),
Expanded(
  child: <Widget?>,
  flex:	2
)
```

## Flexible

Compartilha o espaço disponível do widget pai e mas **NÃO** força o widget filho a caber no espaço.

```dart
Flexible(
  child: <Widget?>,
  fit: FlexFit.loose,    // O tamanho preferido do widget é usado. (Padrão)
  fit: FlexFit.loose,    // Força o widget a preencher todo o espaço extra.
  flex
)
```

Para deixar dois widgets com o mesmo espaço em diferentes larguras de telas.

```dart
Flexible(
  flex: 1,
),
Flexible(
  flex: 1,
)
