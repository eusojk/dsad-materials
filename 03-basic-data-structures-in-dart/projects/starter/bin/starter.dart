import 'dart:collection';

void main() {
  // Lists
  print("\nLISTS");
  List<String> people = [
    "Pablo",
    "Manda",
    "Megan",
  ];
  print(people);
  people.add("Edith");
  print(people);

  // MAPS
  /*

  Map is a `LinkedHashMap` under the hood so any new k-v pair will appear
  at the end of the map.
  That is different from a `HashMap` which does not guarantee the order.
    But this order willbe the same every time it's traversed until the
      collection is mutated.

  */
  print("\nMAPS");
  final scores = {"Eric": 9, "Mark": 12, "wayne": 1};
  print(scores);
  scores["Andrew"] = 0;
  print(scores);

  final hashMap = HashMap.of(scores);
  print(hashMap);

  // SETS
  /*
  A set is a container that holds unique values.
  
  */
  print("\nSETS");
  var bag = {'Candy', 'Juice', 'Gummy'};
  bag.add('Candy');
  print(bag);

  final myList = [1, 2, 2, 3, 4, 1];
  final mySet = <int>{};
  for (final item in myList) {
    // if (mySet.contains(item)) {
    //   // mySet already has it, so it's a duplicate
    // }
    mySet.add(item);
  }
  print(mySet);
}
