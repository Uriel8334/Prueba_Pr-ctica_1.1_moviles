class Ejercicio4Modelo {
  // Determina si un número es perfecto (suma de divisores propios == número)
  bool esNumeroPerfecto(int numero) {
    if (numero <= 0) return false;
    return obtenerSumaDivisores(numero) == numero;
  }

  // Obtiene la suma de los divisores propios del número
  int obtenerSumaDivisores(int numero) {
    int suma = 0;
    for (int i = 1; i < numero; i++) {
      if (numero % i == 0) {
        suma += i;
      }
    }
    return suma;
  }
}
