enum Weather {
  sunny,
  snowy,
  cloudy,
  rainy,
}

void main() {
  // print(Weather.cloudy.index);
  // print(Weather.cloudy.runtimeType);
  // print(Weather.cloudy.toString());

  const myStraing = 'i ❤ dart';
  for (var x in myStraing.runes) print(String.fromCharCode(x));

  const nums = [1, 2, 3, 4];
  nums.forEach((element) {
    print(element);
  });
}
