import 'dart:math';

String randomizer(int size) {
  List<String> random = new List<String>();
  for (var i = 0; i < size; i++) {
    random.add(new Random(100).nextInt(9).toString());
  }
  return random.join();
}