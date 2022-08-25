import 'package:data_structure/stack/stack.dart';

void main(List<String> args) {
  Stack<int> myStack = Stack<int>();
  //set
  Stack<int> myStack2 = Stack<int>.of({9, 3, 04, 202, 2});
  print(myStack2);
  //list
  Stack<int> myStack3 = Stack<int>.of([54, 63, 7804, 2, 82]);
  print(myStack3);
  //map
  Stack myStack4 =
      Stack.of({54: "A", 63: "B", 7804: "C", 2: "D", 82: "E"}.entries);
  print(myStack4);
  myStack.push(3);
  myStack.push(54);
  myStack.push(32);
  myStack.push(21);
  myStack.push(3902);
  print(myStack.toString());
  print(myStack.pop());
  print(myStack.toString());
  reverseList([1, 2, 3, 4, 5]);
  print(balanceParentheses("h((e))llo(world)()"));
  print(balanceParentheses("h((e))llo(world)("));
  print(balanceParentheses("h((e))llo(world))"));
}

balanceParentheses(String value) {
  Stack st = Stack();

  for (var i = 0; i < value.length; i++) {
    if (value[i] == "(") {
      st.push(value[i]);
    } else if (value[i] == ")") {
      if (st.isNotEmpty) {
        st.pop();
        continue;
      }

      return false;
    }
  }

  return st.isEmpty;
}

// [1,2,3,4,5]
//  5
// 4
// 3
// 2
// 1
reverseList<T>(List<T> list) {
  Stack<T> st = Stack();

  for (T item in list) {
    st.push(item);
  }
  list.clear();

  while (st.isNotEmpty) {
    list.add(st.pop() as T);
  }

  print(list);
}
