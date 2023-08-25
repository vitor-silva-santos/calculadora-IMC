class PesoInvalidoExceptions implements Exception {
  String error() => "Peso Invalido";
  @override
  String toString() {
    return "PesoInvalido_Exception: ${error()}";
  }
}
