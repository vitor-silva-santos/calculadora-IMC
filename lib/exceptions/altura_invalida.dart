class AlturaInvalidoExceptions implements Exception {
  String error() => "Altura Invalido";
  @override
  String toString() {
    return "AlturaInvalido_Exception: ${error()}";
  }
}
