import 'package:burocracia/burocracia.dart';
import 'package:test/test.dart';

void main() {
  group('Gerador de CPF', () {
    test('cria um CPF válido', () {
      expect(validateCPF(generateCPF()), isTrue);
    });
    test('cria um CPF válido e formatado', () {
      expect(new RegExp(r'\.|-').hasMatch(generateCPF(formatted: true)), isTrue);
    });
    test('não valida CPF inválido', () {
      expect(validateCPF('111.111.111-11'), isFalse);
    });
  });
  group('Gerador de CNPJ', () {
    test('cria um CNPJ válido', () {
      expect(validateCNPJ(generateCNPJ()), isTrue);
    });
    test('cria um CNPJ válido e formatado', () {
      expect(new RegExp(r'\.|-').hasMatch(generateCNPJ(formatted: true)), isTrue);
    });
    test('não valida CNPJ inválido', () {
      expect(validateCNPJ('111.111.111-11'), isFalse);
    });
  });
}
