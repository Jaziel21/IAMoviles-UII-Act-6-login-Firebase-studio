import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, backgroundColor: Colors.white, leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(Icons.arrow_back_ios, size: 20, color: Colors.black),
      )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            const Text("Login", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            const SizedBox(height: 40),
            const TextField(decoration: InputDecoration(labelText: "Email", border: OutlineInputBorder())),
            const SizedBox(height: 20),
            const TextField(obscureText: true, decoration: InputDecoration(labelText: "Password", border: OutlineInputBorder())),
            const SizedBox(height: 40),
            MaterialButton(
              minWidth: double.infinity,
              height: 60,
              onPressed: () {
                // Aquí podrías navegar a tu pantalla del GridView 2x7
                // Navigator.pushNamed(context, '/grid'); 
              },
              color: const Color(0xFF0095FF),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
              child: const Text("Login", style: TextStyle(color: Colors.white, fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}