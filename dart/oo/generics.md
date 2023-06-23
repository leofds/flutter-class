[Dart](https://github.com/leofds/flutter-class/blob/master/dart/dart.md)

# Generics

É uma forma de representar um tipo de dado genérico, para tal usamos a letra T ao invés do tipo.

```dart
class Stack<T> {
  List<T> _stack = [];

  push(T value) {
    _stack.add(value);
  }

  T? pop() {
    return _stack.isNotEmpty ? _stack.removeLast() : null;
  }
}
```

**exemplo**

```dart
Stack stack = Stack();
stack.push('Maria');
stack.push(10);
stack.push(true);

print(stack.pop());   // true
print(stack.pop());   // 10
print(stack.pop());   // Maria
````

Restringindo o tipo
```dart
Stack<String> stack = Stack<String>();
```
