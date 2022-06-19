void main() {
  const numbers = [1, 2, 3, 4];
  final squares = numbers.map((e) => e * e);
  final sqlst = squares.toList(growable: false);
  print(squares);
  print(sqlst);

  // final evens = squares.where((element) => element & 1 == 0);
  final evens = squares.where((element) => element.isEven);
  print(evens);
  const amounts = [199, 299, 299, 199, 499];
  final sum = amounts.reduce((value, element) => value += element);
  final summ = amounts.fold(5,(int value,int element) => value=value+element);
  print(sum);
  print(summ);
}
