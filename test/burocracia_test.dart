import 'package:burocracia/burocracia.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    test('First Test', () {
      expect(generateCNPJ() == '', isTrue);
    });
  });
}
