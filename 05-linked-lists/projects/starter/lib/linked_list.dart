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
