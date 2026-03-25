import 'package:flutter/material.dart';
import 'package:myapp/mispantallas/bienvenidos.dart';
import 'package:myapp/mispantallas/login.dart';
import 'package:myapp/mispantallas/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Bienvenidos(),
        '/login': (context) => const Login(),
        '/signup': (context) => const SignUp(),
      },
    );
  }
}
