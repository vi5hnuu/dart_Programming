// String fullName(String first, String last, [String? title]) {
//   if (title != null) {
//     return '$title $first $last';
//   } else {
//     return '$first $last';
//   }
// }

String fullName(String first, String last, [String title = 'No Title']) {
  if (title != null) {
    return '$title $first $last';
  } else {
    return '$first $last';
  }
}

Function newFun() {
  int number = 4;
  String greeting = 'hello';
  bool isHungry = true;
  return () {
    return number * 4;
  };
}

void main() {
  print(fullName('Ray', 'Wenderlich'));
  print(fullName('Albert', 'Einstein', 'Professor'));
  print(newFun()());
}
