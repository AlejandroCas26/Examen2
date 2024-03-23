import 'package:flutter/material.dart';

class BorrarVehiculoScreen extends StatelessWidget {
  const BorrarVehiculoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Borrar Vehículo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Esta pantalla es para borrar vehículos.',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                 },
              child: Text('Borrar'),
            ),
          ],
        ),
      ),
    );
  }
}
