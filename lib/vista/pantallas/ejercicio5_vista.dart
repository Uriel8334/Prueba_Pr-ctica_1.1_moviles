import 'package:flutter/material.dart';
import '../../controlador/ejercicio5_controlador.dart';

class Ejercicio5Vista extends StatefulWidget {
  const Ejercicio5Vista({super.key});

  @override
  State<Ejercicio5Vista> createState() => _Ejercicio5VistaState();
}

class _Ejercicio5VistaState extends State<Ejercicio5Vista> {
  final TextEditingController _controller = TextEditingController();
  final Ejercicio5Controlador _controlador = Ejercicio5Controlador();
  String _resultado = '';

  void _generar() {
    setState(() {
      _resultado = _controlador.procesarFibonacci(_controller.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejercicio 5'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Ingrese la cantidad de términos (N)',
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 150,
              height: 40,
              child: ElevatedButton(
                onPressed: _generar,
                child: const Text('Generar', style: TextStyle(fontSize: 16)),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              _resultado,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
