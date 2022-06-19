import 'dart:math';

void main() {
  final random = Random(DateTime.now().millisecond);
  while (random.nextInt(6) + 1 != 6) print('not six');
  print('six');
}
