import 'package:flutter/material.dart';
import 'package:kahoot/screens/homePage.dart';

import 'creation_quiz.dart';
import 'game_acces.dart';
import 'library.dart';
import 'news.dart';

class Nav_layout extends StatefulWidget {

  @override
  _Nav_layoutState createState() => _Nav_layoutState();
}

class _Nav_layoutState extends State<Nav_layout> {
  int currentIndex=0;
  List<Widget> screens=[
    HomePage(),
    newsTasks(),
    gameAccess(),
    add_Quiz(),
    Library()

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index){
            setState(() {
              currentIndex=index;
            });

          },
          items:
          [
            BottomNavigationBarItem(icon:Icon(Icons.home),label: "Accueil"),
            BottomNavigationBarItem(icon:Icon(Icons.menu),label: "Découvrir"),
            BottomNavigationBarItem(icon:Icon(Icons.lock),label: "Code PIN"),
            BottomNavigationBarItem(icon:Icon(Icons.add_sharp),label: "Créer"),
            BottomNavigationBarItem(icon:Icon(Icons.menu),label: "Bibliothéque"),

          ]
      ),

    );
  }
}
