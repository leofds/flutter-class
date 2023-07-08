[Flutter](https://github.com/leofds/flutter-class/blob/master/flutter/README.md)

# Dialogs

## SnackBar

```dart
ScaffoldMessenger.of(context).clearSnackBars();   // Remove a scnak anterior

ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(
    content: Text(''),
    backgroundColor: Colors.grey,
    action: SnackBarAction(
      label: 'Desfazer',
      textColor: const Color(0xff00d7f3),
      onPressed: (){
        setState(() {});
      },
    ),
    duration: const Duration(seconds: 5),
  )
);
```

## Alert

```dart
showDialog(
  context: context,
  builder: (context) => AlertDialog(
    title: Text('Limpar tudo?'),
    content: Text('Tem certeza que deseja apagar todas as tarefas?'),
    actions: [
      TextButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        style: TextButton.styleFrom(primary: Color(0xff00d7f3)),
        child: Text('Cancelar')
      ),
      TextButton(
        onPressed: (){
          Navigator.of(context).pop();
        },
        style: TextButton.styleFrom(primary: Colors.red),
        child: Text('Limpar tudo')
      ),
    ],
  )
);
```

## Bottom Sheet

````dart
showModalBottomSheet(context: context, builder: (context){
  return BottomSheet(onClosing: (){}, builder: (context){
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [

        ],
      ),
    );
  });
});
```
