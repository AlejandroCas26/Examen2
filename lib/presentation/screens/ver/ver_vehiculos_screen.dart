import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class VerVehiculosScreen extends StatelessWidget {
  final CollectionReference _vehiculosRef =
      FirebaseFirestore.instance.collection('vehiculos');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Vehículos'),
      ),
      body: VehiculosList(_vehiculosRef),
    );
  }
}

class VehiculosList extends StatelessWidget {
  final CollectionReference _vehiculosRef;

  VehiculosList(this._vehiculosRef);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
      future: _vehiculosRef.get(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (snapshot.hasError) {
          return const Center(
            child: Text('Error al cargar los vehículos'),
          );
        }
        if (snapshot.hasData && snapshot.data!.docs.isNotEmpty) {
          return ListView.builder(
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) {
              var vehiculo = snapshot.data!.docs[index].data();
              return VehiculoTile(vehiculo: vehiculo as Map<String, dynamic>);
            },
          );
        }
        return const Center(
          child: Text('No se encontraron vehículos'),
        );
      },
    );
  }
}

class VehiculoTile extends StatelessWidget {
  final Map<String, dynamic> vehiculo;

  VehiculoTile({required this.vehiculo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: ListTile(
        title: Text(
          '${vehiculo['marca']} ${vehiculo['modelo']} (${vehiculo['anio']})',
        ),
        subtitle: Text('\$${vehiculo['precio']}'),
        leading: Image.network(vehiculo['fotoUrl']),
      ),
    );
  }
}
