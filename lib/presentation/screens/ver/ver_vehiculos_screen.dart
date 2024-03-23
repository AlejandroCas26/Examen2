import 'package:flutter/material.dart';

class VerVehiculosScreen extends StatelessWidget {
  const VerVehiculosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Vehículos'),
      ),
      body: ListView.builder(
        itemCount: 10, 
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Vehículo ${index + 1}'),
            subtitle: Text('Descripción del vehículo ${index + 1}'),
          );
        },
      ),
    );
  }
}
