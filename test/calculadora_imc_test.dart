import 'package:calculadora_imc/classes/pessoa.dart';
import 'package:test/test.dart';

void main() {
  test('Calcular IMC', () {
    Pessoa pessoa1 = Pessoa(name: "Vitor", peso: 115, altura: 185);
    expect(pessoa1.calcularIMC(), equals(33));
  });
}
