import 'package:flutter/material.dart';
import 'ejercicio4_vista.dart';
import 'ejercicio5_vista.dart';
import 'ejercicio6_vista.dart';

class MenuPrincipalVista extends StatelessWidget {
  const MenuPrincipalVista({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prueba Practica 1.1'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Ejercicio4Vista()),
                  );
                },
                child: const Text('Ejercicio 4', style: TextStyle(fontSize: 16)),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Ejercicio5Vista()),
                  );
                },
                child: const Text('Ejercicio 5', style: TextStyle(fontSize: 16)),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Ejercicio6Vista()),
                  );
                },
                child: const Text('Ejercicio 6', style: TextStyle(fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
