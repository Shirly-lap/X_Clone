import 'package:flutter/material.dart';
import 'package:x_clone/views/twitter_home_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Fondo oscuro.
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centra verticalmente.
          children: [
            // Logo de "X"
            Image.network(
              'https://uploads.brandlive.com/6bc60832-c72e-474b-b740-a91cf6f2c31f/1697646633711/1697646633901_w2400_h2453.png',
              width: 55,
              height: 55,
            ),
            SizedBox(height: 30), // Espaciador.
            Text(
              "Bienvenido a X",
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            SizedBox(height: 20),
            // Campo de entrada para el correo
            TextField(
              style: TextStyle(color: Colors.white), // Texto blanco.
              decoration: InputDecoration(
                labelText: "Correo Electrónico",
                labelStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Campo de entrada para la contraseña
            TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: "Contraseña",
                labelStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
              obscureText: true, // Oculta la entrada de texto.
            ),
            SizedBox(height: 30),
            // Botón de iniciar sesión
            ElevatedButton(
              onPressed: () {
                // Simulamos la redirección al Home.
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => TwitterHomePage()),
                );
              },
              child: Text(
                "Iniciar Sesión",
                style: TextStyle(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
