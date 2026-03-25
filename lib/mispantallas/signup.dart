import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, backgroundColor: Colors.white, leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(Icons.arrow_back_ios, size: 20, color: Colors.black),
      )),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            const Text("Sign up", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            const Text("Create an account, it's free"),
            const SizedBox(height: 30),
            const TextField(decoration: InputDecoration(labelText: "Username", border: OutlineInputBorder())),
            const SizedBox(height: 20),
            const TextField(decoration: InputDecoration(labelText: "Email", border: OutlineInputBorder())),
            const SizedBox(height: 20),
            const TextField(obscureText: true, decoration: InputDecoration(labelText: "Password", border: OutlineInputBorder())),
            const SizedBox(height: 20),
            const TextField(obscureText: true, decoration: InputDecoration(labelText: "Confirm Password", border: OutlineInputBorder())),
            const SizedBox(height: 30),
            MaterialButton(
              minWidth: double.infinity,
              height: 60,
              onPressed: () {},
              color: const Color(0xFF0095FF),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
              child: const Text("Sign up", style: TextStyle(color: Colors.white, fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}