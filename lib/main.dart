import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kahoot/screens/creation_quiz.dart';
import 'package:kahoot/screens/game_acces.dart';
import 'package:kahoot/screens/homePage.dart';
import 'package:kahoot/screens/nav.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home:add_Quiz (),
    );
  }
}

