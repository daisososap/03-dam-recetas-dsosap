import 'package:flutter/material.dart';
import '../models/receta.dart';

class DetalleRecetaScreen extends StatelessWidget {
  final Receta receta;

  const DetalleRecetaScreen({super.key, required this.receta});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(receta.nombre),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              receta.imagenUrl,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    receta.nombre,
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text('Tiempo total: ${receta.tiempoTotal} mins (${receta.tiempoPreparacion} prep / ${receta.tiempoCocccion} cocción)'),
                  Text('Porciones: ${receta.porciones} | Calorías: ${receta.calorias} kcal'),
                  const Divider(height: 24),
                  const Text(
                    'Ingredientes:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  ...receta.ingredientes.map((ing) => Text('• $ing')),
                  const Divider(height: 24),
                  const Text(
                    'Instrucciones:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  ...receta.instrucciones.map((ins) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Text('• $ins'),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}