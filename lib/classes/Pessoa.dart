class Pessoa {
  late String _name;
  late double _peso;
  late double _altura;

  String get getName => _name;
  double get getPeso => _peso;
  double get getAltura => _altura;

  Pessoa({required String name, required double peso, required double altura}) {
    _name = name.trim();
    _peso = peso;
    _altura = altura / 100;
  }

  String classificacaoIMC() {
    double imc = calcularIMC();
    return "IMC: $imc, Classificação: ${fraseIMC(imc)}";
  }

  double calcularIMC() {
    return (_peso / (_altura * _altura)).truncateToDouble();
  }

  String fraseIMC(double imc) {
    if (imc < 16) {
      return "Magreza grave";
    } else if (imc >= 16 && imc < 17) {
      return "Magreza moderada";
    } else if (imc >= 17 && imc < 18.5) {
      return "Magreza leve";
    } else if (imc >= 18.5 && imc < 25) {
      return "Saúdavel";
    } else if (imc >= 25 && imc < 30) {
      return "Sobrepreso";
    } else if (imc >= 30 && imc < 35) {
      return "Obesidade Grau I";
    } else if (imc >= 35 && imc < 40) {
      return "Obesidade Grau II (severa)";
    } else {
      return "Obesidade Grau III (mórbida)";
    }
  }
}
