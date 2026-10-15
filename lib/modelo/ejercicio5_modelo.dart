class Ejercicio5Modelo {
  // Genera los primeros N términos de la serie de Fibonacci
  List<int> generarFibonacci(int n) {
    if (n <= 0) return [];
    
    List<int> serie = [];
    int a = 0;
    int b = 1;

    for (int i = 0; i < n; i++) {
      serie.add(a);
      int siguiente = a + b;
      a = b;
      b = siguiente;
    }
    
    return serie;
  }
}
