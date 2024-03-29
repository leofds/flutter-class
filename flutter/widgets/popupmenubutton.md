[Widgets](https://github.com/leofds/flutter-class/blob/master/flutter/widgets/README.md)

# PopupMenuButton

**Exemplo 1**

```dart
PopupMenuButton<int>(
  initialValue: 1,          // Valor inicial é opcional
  onSelected: (int value) {
    //..
  },
  itemBuilder: (BuildContext context) => <PopupMenuEntry<int>>[
    const PopupMenuItem<int>(
      value: 1,
      child: Text('Item 1'),
    ),
    const PopupMenuItem<int>(
      value: 2,
      child: Text('Item 2'),
    ),
  ],
),
```

**Exemplo 2**

```dart
enum MyItem { itemEdit, itemDelete }

PopupMenuButton<MyItem>(
  onSelected: (MyItem value) {
    //..
  },
  itemBuilder: (BuildContext context) => <PopupMenuEntry<MyItem>>[
    const PopupMenuItem<MyItem>(
      value: MyItem.itemEdit,
      child: ListTile(
        leading: Icon(Icons.edit),
        title: Text('Editar'),
      ),
    ),
    const PopupMenuItem<MyItem>(
      value: MyItem.itemDelete,
      child: ListTile(
        leading: Icon(Icons.delete),
        title: Text('Remover'),
      ),
    ),
  ],
),
```
