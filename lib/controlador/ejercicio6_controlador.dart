import '../modelo/ejercicio6_modelo.dart';

class Ejercicio6Controlador {
  final Ejercicio6Modelo _modelo = Ejercicio6Modelo();

  String procesarArmstrong(String input) {
    int? numero = int.tryParse(input.trim());

    if (numero == null || numero <= 0) {
      return 'Por favor ingrese un número entero positivo válido.';
    }

    bool esArmstrong = _modelo.esNumeroArmstrong(numero);
    int suma = _modelo.calcularSumaArmstrong(numero);

    if (esArmstrong) {
      return 'El número $numero ES un número Armstrong.\n(Suma de dígitos elevados: $suma)';
    } else {
      return 'El número $numero NO es un número Armstrong.\n(Suma de dígitos elevados: $suma)';
    }
  }
}
