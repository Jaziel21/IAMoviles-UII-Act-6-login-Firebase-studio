import 'package:flutter/material.dart';

class Bienvenidos extends StatelessWidget {
  const Bienvenidos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const Text("Welcome", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                  const SizedBox(height: 20),
                  Text("Librería AJMG le ofrece la mejor experiencia de lectura.", 
                    textAlign: TextAlign.center, 
                    style: TextStyle(color: Colors.grey[700], fontSize: 15)),
                ],
              ),
              // Imagen ilustrativa (puedes usar link o asset)
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: NetworkImage('https://picsum.photos/id/2/400/400'))
                ),
              ),
              Column(
                children: [
                  // Botón Login
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () => Navigator.pushNamed(context, '/login'),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: const Text("Login", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
                  ),
                  const SizedBox(height: 20),
                  // Botón Sign Up
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () => Navigator.pushNamed(context, '/signup'),
                    color: const Color(0xFF0095FF),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                    child: const Text("Sign up", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}