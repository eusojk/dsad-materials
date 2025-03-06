class Node<T> {
  Node({required this.value, this.next});
  T value;
  Node<T>? next;

  @override
  String toString() {
    StringBuffer buffer = StringBuffer();
    Node<T>? currentNode = this;
    while (true) {
      buffer.write(currentNode?.value);
      currentNode = currentNode?.next;
      if (currentNode == null) break;
      buffer.write(' -> ');
    }
    return buffer.toString();
  }
}

class LinkedList<E> {
  Node<E>? head;
  Node<E>? tail;

  bool get isEmpty => head == null;

  @override
  String toString() {
    if (isEmpty) return 'Empty list';
    return head.toString();
  }

  // pushing to the front of a list aka head-first insertion
  void push(E value) {
    // create a new node and point to the node that used to be head & set it as head
    head = Node(value: value, next: head);
    // in case you’re pushing into an empty list, the new node is both the head and tail of the list.
    tail ??= head;
  }
}
