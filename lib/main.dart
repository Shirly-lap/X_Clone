import 'package:flutter/material.dart';
import 'package:x_clone/views/login_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Ocultamos el banner de depuración.
      title: 'Clon de X (Twitter)',
      theme: ThemeData.dark(), // Tema oscuro predeterminado.
      home: LoginPage(), // Pantalla inicial es la de Login.
    );
  }
}
