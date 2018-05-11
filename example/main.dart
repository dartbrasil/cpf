import 'package:cpf/cpf.dart';

main() {
  print(gerarCPF());
  print(gerarCPF(formatted: true));
  print(validarCPF('076.373.139-05'));
}
