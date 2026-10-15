import 'package:flutter/material.dart';
import '../../controlador/ejercicio6_controlador.dart';

class Ejercicio6Vista extends StatefulWidget {
  const Ejercicio6Vista({super.key});

  @override
  State<Ejercicio6Vista> createState() => _Ejercicio6VistaState();
}

class _Ejercicio6VistaState extends State<Ejercicio6Vista> {
  final TextEditingController _controller = TextEditingController();
  final Ejercicio6Controlador _controlador = Ejercicio6Controlador();
  String _resultado = '';

  void _verificar() {
    setState(() {
      _resultado = _controlador.procesarArmstrong(_controller.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejercicio 6'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Ingrese un número entero positivo',
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 150,
              height: 40,
              child: ElevatedButton(
                onPressed: _verificar,
                child: const Text('Verificar', style: TextStyle(fontSize: 16)),
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
