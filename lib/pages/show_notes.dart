import 'package:flutter/material.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({super.key});

  Expanded CardPlace({required Icon icons, required String notes}) {
    return Expanded(
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xFF6B86A2),
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.all(13.0),
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            children: [
              Center(child: Text(notes)),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF465769),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 5.0,
        title: const Text(
          "N O T E S",
          style: TextStyle(
            fontSize: 17.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CardPlace(
                icons: const Icon(Icons.music_note_sharp),
                notes:
                    "1 , 2 , 3 , 2 , 4  |  5 , 4 , 3 , 4 , 5  |  6 , 5 , 4 , 3 , 2 ,1 "),
            CardPlace(
                icons: const Icon(Icons.music_note_sharp),
                notes:
                    "1 , 1 , 5 , 5 , 6 , 6 , 5  |  4 , 4 , 3 , 3 , 2 , 2 , 1 "),
            CardPlace(
                icons: const Icon(Icons.music_note_sharp),
                notes:
                    "5 , 3 , 6 , 2 , 4  |  1 , 7 , 2 , 4 , 6  |  5 , 3 , 2 , 5 , 1 ,7 "),
            CardPlace(
                icons: const Icon(Icons.music_note_sharp),
                notes:
                    "1 , 4 , 3 , 5 , 2  |  6 , 1 , 5 , 4 , 3  |  7 , 2 , 6 , 1 , 4 ,3 "),
            CardPlace(
                icons: const Icon(Icons.music_note_sharp),
                notes:
                    "1 , 2 , 3 , 5 , 6  |  3 , 2 , 1  |  4 , 5 , 6 , 1 , 3 , 2  |            4 , 5 , 1 , 2 , 3  |  6 , 5 , 3 , 2 , 1 "),
            CardPlace(
                icons: const Icon(Icons.music_note_sharp),
                notes:
                    "1 , 2 , 3 , 5 , 6   |  3 , 2 , 1   |  4 , 5 , 6 , 1 , 3 , 2   |  4 , 5 , 1 , 2 , 3 | 6 , 5 , 3 , 2 , 1 "),
          ],
        ),
      ),
    );
  }
}
