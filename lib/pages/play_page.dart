import 'package:flutter/material.dart';
import 'build_buttons.dart';

class PlayPage extends StatelessWidget {
  const PlayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF4C5F72),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              BuildKeyNormal(note: 1, color: Color(0xFF394552)),
              BuildKeyNormal(note: 2, color: Color(0xFF414F60)),
              BuildKeyNormal(note: 3, color: Color(0xFF455667)),
              BuildKeyNormal(note: 4, color: Color(0xFF53677C)),
              BuildKeyNormal(note: 5, color: Color(0xFF6B84A2)),
              BuildKeyNormal(note: 6, color: Color(0xFF81A2C5)),
              BuildKeyNormal(note: 7, color: Color(0xFF8DB1D5)),
            ],
          ),
        ),
      ),
    );
  }
}
