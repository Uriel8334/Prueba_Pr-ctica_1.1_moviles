import '../modelo/ejercicio5_modelo.dart';

class Ejercicio5Controlador {
  final Ejercicio5Modelo _modelo = Ejercicio5Modelo();

  String procesarFibonacci(String input) {
    int? n = int.tryParse(input.trim());

    if (n == null || n <= 0) {
      return 'Por favor ingrese un número entero positivo válido.';
    }

    List<int> serie = _modelo.generarFibonacci(n);
    return 'Los primeros $n términos de la serie de Fibonacci son:\n\n${serie.join(", ")}';
  }
}
