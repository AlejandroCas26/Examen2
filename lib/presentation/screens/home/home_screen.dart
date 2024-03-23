import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Autos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            SizedBox(
              height: 150,
              child: Image.network(
                'https://i.pinimg.com/736x/92/67/f1/9267f1eab24c5eb36930c3afd264c098.jpg',
                fit: BoxFit.cover, 
              ),
            ),
            SizedBox(height: 40), 
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ver_vehiculos');
              },
              child: Text('Ver Vehículos'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                 Navigator.pushNamed(context, '/agregar_vehiculo');
              },
              child: Text('Agregar Vehículo'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/buscar_vehiculo');
              },
              child: Text('Buscar Vehículo'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/otra_operacion');
              },
              child: Text('Otra Operación'),
            ),
          ],
        ),
      ),
    );
  }
}
