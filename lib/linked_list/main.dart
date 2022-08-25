import 'package:data_structure/linked_list/node.dart';

linkListMain() {
  Node<int> a = Node(1);
  Node<int> b = Node(2);
  Node<int> c = Node(3);
  Node<int> d = Node(4);

  a.next = b;
  b.next = c;
  c.next = d;
  print(a);
}
