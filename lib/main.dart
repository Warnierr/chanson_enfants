import 'package:flutter/material.dart';
import './accueil_page.dart';
import './chansons_page.dart';
import './favoris_page.dart';
import './profil_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // Définir la couleur rose comme couleur primaire
  final ThemeData _theme = ThemeData(
    primaryColor: const Color(0xFFF9D9D0),
    // Ajouter d'autres propriétés de thème selon vos besoins
  );

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chanson enfants',
      theme: _theme,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    const AccueilPage(),
    const ChansonsPage(),
    const FavorisPage(),
    const ProfilPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chanson pour enfant'),
        backgroundColor: const Color(0xFFF9D9D0),
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
            backgroundColor: Color(0xFFF9D9D0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'Chansons',
            backgroundColor: Color(0xFFF9D9D0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favoris',
            backgroundColor: Color(0xFFF9D9D0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
            backgroundColor: Color(0xFFF9D9D0),
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
