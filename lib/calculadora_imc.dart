import 'package:calculadora_imc/classes/pessoa.dart';
import 'package:calculadora_imc/exceptions/altura_invalida.dart';
import 'package:calculadora_imc/exceptions/nome_invalido.dart';
import 'package:calculadora_imc/exceptions/peso_invalido.dart';

import 'utils/console_utils.dart';

void execute() {
  print("----- BEM-VINDO - CALCULADORA IMC -----");
  String name = ConsoleUtils.lerStringcomTexto("Digite o nome: ");
  if (name.trim() == "") {
    throw NomeInvalidoExceptions();
  }

  double? altura = ConsoleUtils.lerDoubleComTexto("Digite a altura(CM): ");
  if (altura == null || altura == 0) {
    throw AlturaInvalidoExceptions();
  }

  double? peso = ConsoleUtils.lerDoubleComTexto("Digite o peso(KG): ");
  if (peso == null || peso == 0) {
    throw PesoInvalidoExceptions();
  }

  Pessoa pessoa1 = Pessoa(name: name, peso: peso, altura: altura);
  print(pessoa1.classificacaoIMC());
}
