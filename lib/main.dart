import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';  
import 'firebase_options.dart';
import 'pages/login.dart';  
import 'pages/home_page.dart';   

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,  
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,  
    );
  }
}

final GoRouter _router = GoRouter(
  initialLocation: '/',  
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginPage(),  
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomePage(),  
    ),
  ],
);
