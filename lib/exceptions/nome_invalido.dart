class NomeInvalidoExceptions implements Exception {
  String error() => "Nome Invalido";
  @override
  String toString() {
    return "NameInvalido_Exception: ${error()}";
  }
}
