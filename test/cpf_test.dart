import 'package:cpf/cpf.dart';
import 'package:test/test.dart';

void main() {
  group('Gerador de CPF', () {
    test('cria um CPF válido', () {
      expect(validarCPF(gerarCPF()), isTrue);
    });
    test('cria um CPF válido e formatado', () {
      expect(new RegExp(r'\.|-').hasMatch(gerarCPF(formatted: true)), isTrue);
    });
    test('não valida CPF inválido', () {
      expect(validarCPF('111.111.111-11'), isFalse);
    });
  });
}
