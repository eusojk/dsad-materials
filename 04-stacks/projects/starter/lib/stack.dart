/*


Stacks are crucial to problems that search trees and graphs. 
Imagine finding your way through a maze. 
Each time you come to a decision point of left, right or straight, 
you can push all possible decisions onto your stack. 
When you hit a dead end, simply backtrack by popping from the stack and 
continuing until you escape or hit another dead end. 
You may want to try your hand at that sometime, but for now, 
work through the challenges in the following section.

*/

class Stack<E> {
  // default constructor
  Stack() : _storage = <E>[];

  // Constructor: creating a stack from an Iterable
  Stack.of(Iterable<E> elements) : _storage = List<E>.of(elements);

  final List<E> _storage;

  @override
  String toString() {
    return '--- Top ---\n'
        '${_storage.reversed.join('\n')}'
        '\n------------';
  }

  void push(E element) => _storage.add(element);
  E pop() => _storage.removeLast();

  E get peek => _storage
      .last; // look at the top element of the stack without mutating its contents.
  bool get isEmpty => _storage.isEmpty;
  bool get isNotEmpty => !isEmpty;
  int get length => _storage.length;
}
