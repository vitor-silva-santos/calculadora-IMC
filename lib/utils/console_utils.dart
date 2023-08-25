import 'dart:io';

class ConsoleUtils {
  static String lerString() => stdin.readLineSync().toString();

  static double? lerDouble() {
    String value = lerString();
    try {
      return double.parse(value);
    } catch (e) {
      return null;
    }
  }

  static String lerStringcomTexto(String txt) {
    stdout.write(txt);
    return lerString();
  }

  static double? lerDoubleComTexto(String txt) {
    stdout.write(txt);
    return lerDouble();
  }
}
