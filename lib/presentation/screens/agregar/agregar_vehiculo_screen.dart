import 'package:flutter/material.dart';
import 'package:examen2_grupo4/data/models/vehiculo.dart';

class AgregarVehiculoScreen extends StatefulWidget {
  @override
  _AgregarVehiculoScreenState createState() => _AgregarVehiculoScreenState();
}

class _AgregarVehiculoScreenState extends State<AgregarVehiculoScreen> {
  TextEditingController _marcaController = TextEditingController();
  TextEditingController _modeloController = TextEditingController();
  TextEditingController _anioController = TextEditingController();
  TextEditingController _colorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agregar Vehículo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _marcaController,
              decoration: InputDecoration(labelText: 'Marca'),
            ),
            TextField(
              controller: _modeloController,
              decoration: InputDecoration(labelText: 'Modelo'),
            ),
            TextField(
              controller: _anioController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Año'),
            ),
            TextField(
              controller: _colorController,
              decoration: InputDecoration(labelText: 'Color'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Vehiculo vehiculo = Vehiculo(
                  marca: _marcaController.text,
                  modelo: _modeloController.text,
                  anio: int.parse(_anioController.text),
                  color: _colorController.text,
                );

              },
              child: Text('Agregar Vehículo'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _marcaController.dispose();
    _modeloController.dispose();
    _anioController.dispose();
    _colorController.dispose();
    super.dispose();
  }
}
