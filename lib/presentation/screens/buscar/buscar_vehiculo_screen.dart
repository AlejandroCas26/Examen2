import 'package:flutter/material.dart';

class BuscarVehiculoScreen extends StatelessWidget {
  const BuscarVehiculoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buscar Vehículo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Aquí puedes buscar vehículos',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
              },
              child: Text('Realizar búsqueda'),
            ),
          ],
        ),
      ),
    );
  }
}
