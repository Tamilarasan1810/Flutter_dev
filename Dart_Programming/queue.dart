import 'dart:collection';

main() {
  // Queue is Ordered, no index, add and remove from start and form the end
  Queue items = new Queue();
  items.add(1);
  items.add(20);
  items.add(30);
  print(items);
  items.removeFirst();
  print(items);
  items.removeLast();
  print(items);
}
