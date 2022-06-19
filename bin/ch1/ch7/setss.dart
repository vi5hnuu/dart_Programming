void main() {
  final Set<int> someset = {};
  // final someSet = <int>{};
  someset.addAll({1, 1, 2, 5, 6, 5, 8, 5});
  print(someset);
  print(someset.contains(1));

  final setA = {8, 2, 3, 1, 4};
  final setB = {1, 6, 5, 4};
  print(setA.union(setB));
  print(setA.intersection(setB));
  print(setA.difference(setB));

}
