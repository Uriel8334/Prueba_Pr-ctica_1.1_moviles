class Ejercicio6Modelo {
  // Determina si un número es Armstrong (suma de dígitos elevados a cantidad de cifras == número)
  bool esNumeroArmstrong(int numero) {
    if (numero <= 0) return false;
    return calcularSumaArmstrong(numero) == numero;
  }

  // Calcula la suma de cada dígito elevado a la cantidad de cifras del número
  int calcularSumaArmstrong(int numero) {
    String texto = numero.toString();
    int cantidadCifras = texto.length;
    int suma = 0;

    for (int i = 0; i < cantidadCifras; i++) {
      int digito = int.parse(texto[i]);
      
      int potencia = 1;
      for (int j = 0; j < cantidadCifras; j++) {
        potencia *= digito;
      }
      
      suma += potencia;
    }

    return suma;
  }
}
