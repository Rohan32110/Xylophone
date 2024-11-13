import 'package:flutter/material.dart';
import 'build_buttons.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 88.0),
              Center(
                child: Image.asset('images/xylophonet.png',
                    height: 177.0, width: 177.0),
              ),
              const SizedBox(height: 23.0),
              const Text(
                "X Y L O P H O N E",
                style: TextStyle(
                  fontSize: 27.0,
                ),
              ),
              const SizedBox(
                height: 10.0,
                width: 255.0,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 15.0),
              const Text(
                "P L A Y   Y O U R   M E L O D Y",
                style: TextStyle(
                  fontSize: 14.5,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 105.0),
              BuildButtons(
                  contexts: context,
                  path: '/playPage',
                  text: "  L E T'S   P L A Y",
                  icons: Icons.piano),
              const SizedBox(height: 15.0),
              BuildButtons(
                  contexts: context,
                  path: '/learnPage',
                  text: "  L E T'S   L E A R N",
                  icons: Icons.school),
              const SizedBox(height: 15.0),
              BuildButtons(
                contexts: context,
                path: '/notesPage',
                text: "  S H 0 W   N O T E S",
                icons: Icons.library_music,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
