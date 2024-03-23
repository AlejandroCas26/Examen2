import 'package:flutter/material.dart';
import 'package:examen2_grupo4/core/router/app_router.dart';
import 'package:examen2_grupo4/presentation/screens/home/home_screen.dart';
import 'package:examen2_grupo4/presentation/screens/ver/ver_vehiculos_screen.dart';
import 'package:examen2_grupo4/presentation/screens/agregar/agregar_vehiculo_screen.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      title: 'Autos',
      routes: {
        '/': (context) => HomeScreen(),
        '/ver_vehiculos': (context) => VerVehiculosScreen(),
        '/agregar_vehiculo': (context) => AgregarVehiculoScreen(),
      },
    );
  }
}
