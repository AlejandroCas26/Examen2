import 'package:flutter/material.dart';
import 'package:examen2_grupo4/core/router/app_router.dart';

void main() {
  runApp( MainApp());
}

class MainApp extends StatelessWidget {
  static final routes = <String, WidgetBuilder>{
    '/': (BuildContext context) => const HomeScreen (),
  
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      debugShowCheckedModeBanner: false,
      title: 'Autos',
      routes: routes, 
    );
  }
}

