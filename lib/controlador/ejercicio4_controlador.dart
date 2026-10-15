import '../modelo/ejercicio4_modelo.dart';

class Ejercicio4Controlador {
  final Ejercicio4Modelo _modelo = Ejercicio4Modelo();

  String procesarNumero(String input) {
    int? numero = int.tryParse(input.trim());

    if (numero == null || numero <= 0) {
      return 'Por favor ingrese un número entero positivo válido.';
    }

    bool esPerfecto = _modelo.esNumeroPerfecto(numero);
    int suma = _modelo.obtenerSumaDivisores(numero);

    if (esPerfecto) {
      return 'El número $numero ES un número perfecto.\n(Suma de divisores = $suma)';
    } else {
      return 'El número $numero NO es un número perfecto.\n(Suma de divisores = $suma)';
    }
  }
}
