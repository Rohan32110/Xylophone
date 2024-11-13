import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void playSound(int note) {
  final player = AudioPlayer();
  player.play(
    AssetSource('note$note.wav'),
  );
}

class BuildButtons extends StatelessWidget {
  const BuildButtons(
      {super.key,
      required this.contexts,
      required this.path,
      required this.text,
      required this.icons});

  final BuildContext contexts;
  final String path;
  final String text;
  final IconData icons;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(const Color(0xFF222A31)),
        foregroundColor: MaterialStateProperty.all(const Color(0xFDF9F9FF)),
        fixedSize: MaterialStateProperty.all(const Size(209.0, 43.0)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
      onPressed: () {
        Navigator.pushNamed(contexts, path);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icons),
          Text(
            text,
            style: const TextStyle(
              fontSize: 13.5,
            ),
          ),
        ],
      ),
    );
  }
}

class BuildKeys extends StatelessWidget {
  const BuildKeys(
      {super.key,
      required this.note,
      required this.color,
      required this.boxNum,
      required this.onTap});

  final int note;
  final Color color;
  final int boxNum;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          onTap();
          playSound(note);
        },
        child: Container(
          height: 20.0,
          width: 235.0,
          color: color,
          child: Center(
            child: Transform.rotate(
              angle: 3.14 / 2,
              child: Text(
                "$boxNum",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BuildKeyNormal extends StatelessWidget {
  const BuildKeyNormal({super.key, required this.note, required this.color});

  final int note;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          playSound(note);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }
}
