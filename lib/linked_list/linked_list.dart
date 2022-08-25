import 'package:data_structure/linked_list/node.dart';

class LinkedList<T> {
  Node<T>? head;
  Node<T>? tail;

  LinkedList({this.head});

  bool get isEmpty => head == null;

  @override
  String toString() {
    if (isEmpty) return 'Empty list';
    return head.toString();
  }
}
