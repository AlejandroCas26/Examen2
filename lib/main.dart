import 'package:examen2_grupo4/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:examen2_grupo4/core/router/app_router.dart';
import 'package:examen2_grupo4/presentation/screens/home/home_screen.dart';
import 'package:examen2_grupo4/presentation/screens/ver/ver_vehiculos_screen.dart';
import 'package:examen2_grupo4/presentation/screens/agregar/agregar_vehiculo_screen.dart';
import 'package:examen2_grupo4/presentation/screens/buscar/buscar_vehiculo_screen.dart';
import 'package:examen2_grupo4/presentation/screens/borrar/borrar_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final FirebaseApp app = await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      title: 'Autos',
      routes: {
        '/': (context) => const HomeScreen(),
        '/agregar_vehiculo': (context) => AgregarVehiculoScreen(),
        '/ver_vehiculos': (context) => VerVehiculosScreen(),
        '/buscar_vehiculo': (context) => const BuscarVehiculoScreen(),
        '/borrar_vehiculo': (context) => const BorrarVehiculoScreen(),
      },
    );
  }
}
