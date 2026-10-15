import 'package:flutter/material.dart';
import '../../controlador/ejercicio4_controlador.dart';

class Ejercicio4Vista extends StatefulWidget {
  const Ejercicio4Vista({super.key});

  @override
  State<Ejercicio4Vista> createState() => _Ejercicio4VistaState();
}

class _Ejercicio4VistaState extends State<Ejercicio4Vista> {
  final TextEditingController _controller = TextEditingController();
  final Ejercicio4Controlador _controlador = Ejercicio4Controlador();
  String _resultado = '';

  void _calcular() {
    setState(() {
      _resultado = _controlador.procesarNumero(_controller.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejercicio 4'),
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
                onPressed: _calcular,
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
