import 'package:flutter/material.dart';
import 'package:x_clone/views/login_page.dart';
import '../widgets/tweet_list.dart';
import '../widgets/bottom_nav_bar.dart';

class TwitterHomePage extends StatelessWidget {
  final List<Map<String, String>> tweets = [
    {
      "user": "DrilococoPH",
      "content": "Uy zona!! soy Drilococo fotografo 📸🐊✨",
      "image": "https://img.freepik.com/vector-gratis/lindo-cocodrilo-fotografo-sosteniendo-camara-dibujos-animados-vector-icono-ilustracion-animal-tecnologia-icono_138676-4906.jpg?t=st=1732715976~exp=1732719576~hmac=5c29fe7f4439ef6e6d5a16af6c1779a167e353a1dd895918909313c283d3ad1e&w=1380"
    },
    {
      "user": "Drilococo",
      "content": "Uy zona!! si es el Drilococo en X ✨",
      "image": "https://img.freepik.com/vector-gratis/icono-vectorial-dibujos-animados-cocodrilo-sentado-ilustracion-icono-naturaleza-animal-vector-plano-aislado_138676-12804.jpg?t=st=1732715491~exp=1732719091~hmac=17985ca7026d2b1c3184ac2668558dcbbbfa787f680922ef0c3eba8f31f5d914&w=1380"
    },

    {
      "user": "DrilococoDev",
      "content": "Esta es mi primera app con flutter",
      "image": "https://img.freepik.com/vector-gratis/lindo-dino-trabajando-computadora-portatil-dibujos-animados-vector-icono-ilustracion-animal-tecnologia-icono-aislado_138676-5401.jpg?t=st=1732715704~exp=1732719304~hmac=d24d2e4fe34122c766fb130b3c43f076488f98c3db8a345cba9e511f0b4e0b92&w=1380"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: GestureDetector(
          onTap: () {
            // Navegamos al Login al hacer clic en el logotipo.
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },
          child: Image.network(
            'https://uploads.brandlive.com/6bc60832-c72e-474b-b740-a91cf6f2c31f/1697646633711/1697646633901_w2400_h2453.png',
            width: 25,
            height: 25,
          ),
        ),
        centerTitle: true,
        elevation: 0,

      ),
      body: TweetList(tweets: tweets),
      bottomNavigationBar: TwitterBottomNavBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: Icon(Icons.add, color: Colors.white, size: 30),
      ),
    );
  }
}
