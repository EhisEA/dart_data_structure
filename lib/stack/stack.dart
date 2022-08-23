class Stack<T> {
  Stack() : _storage = <T>[];

  Stack.of(Iterable<T> iterable)
      :
        // _storage =  List<T>.of(iterable);
        _storage = iterable.toList();

  final List<T> _storage;

  T get peek => _storage.last;

  bool get isEmpty => _storage.isEmpty;

  bool get isNotEmpty => !isEmpty;

  void push(T value) {
    _storage.add(value);
  }

  T? pop() {
    if (_storage.isEmpty) return null;
    return _storage.removeLast();
  }

  @override
  String toString() {
    return '--- Top ---\n'
        '${_storage.reversed.join('\n')}'
        '\n-----------';
  }
}
