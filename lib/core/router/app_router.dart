import 'package:examen2_grupo4/presentation/screens/home/home_screen.dart';
import 'package:examen2_grupo4/presentation/screens/ver/ver_vehiculos_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/ver_vehiculos',
      builder: (context, state) => VerVehiculosScreen(),
    ),
    
  ],
);
