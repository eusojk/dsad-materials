import 'package:starter/stack.dart';

// challenge 1
void printListInReverse(List<String> contents) {
  final stack = Stack.of(contents);
  while (stack.isNotEmpty) {
    print(stack.pop());
  }
}

// challenge 1 - solution:
/*
The time complexity of pushing all list elements into the stack is O(n). 
The time complexity of popping the stack to print the values is also O(n). 
Overall, the time complexity of this algorithm is O(n).

Since you’re allocating a container (the stack) inside the function, 
you also incur an O(n) space complexity cost.

Note: The way you should reverse a list in production code is to call 
the reversed method that List provides. This method is O(1) in time and space. 
This is because, as an iterable, it’s lazy and only creates a reversed view into
the original collection. If you traverse the items and print out all of the elements, 
it predictably makes the operation O(n) in time while remaining O(1) in space.
 */
void printInReverse<E>(List<E> list) {
  var stack = Stack<E>();

  for (E value in list) {
    stack.push(value);
  }

  while (stack.isNotEmpty) {
    print(stack.pop());
  }
}

// ====================================================================

// challenge 2: Balance the parentheses
bool hasBalancedParentheses(String content) {
  final stackOpenParens = Stack<String>();
  final stackCloseParens = Stack<String>();

  for (var i = 0; i < content.length; i++) {
    var char = content[i];
    if (char == "(") {
      stackOpenParens.push(char);
    } else if (char == ")") {
      stackCloseParens.push(char);
    }
  }
  return (stackOpenParens.length == stackCloseParens.length);
}

// challenge 2 - solution:
/*
The time complexity of this algorithm is O(n), where n is the number of 
code units in the string. This algorithm also incurs an O(n) space complexity cost
due to using the Stack data structure.

 */
bool areParenthesesBalanced(String text) {
  var stack = Stack<String>();
  for (int i = 0; i < text.length; i++) {
    final character = text[i];
    if (character == '(') {
      stack.push(character);
    } else if (character == ')') {
      if (stack.isEmpty) {
        return false;
      } else {
        stack.pop();
      }
    }
  }
  return stack.isEmpty;
}

// ====================================================================

void main() {
  final contents = ["a", "m", "a", "r", "a"];
  printListInReverse(contents);

  // for challenge 2
  final str1 = "h((e))llo(world)()";
  final str2 = "(hello world";

  bool str1BalancedStatus = hasBalancedParentheses(str1);
  bool str2BalancedStatus = hasBalancedParentheses(str2);

  print(
      "Does `$str1` have balanced parentheses?\nAnswer: $str1BalancedStatus\n");
  print(
      "Does `$str2` have balanced parentheses?\nAnswer: $str2BalancedStatus\n");
}
