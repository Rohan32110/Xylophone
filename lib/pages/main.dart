import 'package:flutter/material.dart';
import 'package:pract_ices/pages/home.dart';
import 'package:pract_ices/pages/learn_page.dart';
import 'package:pract_ices/pages/show_notes.dart';
import 'package:pract_ices/pages/play_page.dart';

void main() {
  runApp(const Xylophone());
}

class Xylophone extends StatelessWidget {
  const Xylophone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Ubuntu'),
      home: const HomePage(),
      routes: {
        '/homePage': (context) => const HomePage(),
        '/playPage': (context) => const PlayPage(),
        '/learnPage': (context) => const LearnPage(),
        '/notesPage': (context) => const NotesPage(),
      },
    );
  }
}
