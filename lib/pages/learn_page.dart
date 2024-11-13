import 'package:flutter/material.dart';
import 'build_buttons.dart';
import 'listing.dart';

class LearnPage extends StatefulWidget {
  const LearnPage({super.key});

  @override
  State<LearnPage> createState() => _LearnPageState();
}

class _LearnPageState extends State<LearnPage> {
  int counter = 0;
  String buttonText = "Next";
  Color backgroundColor = const Color(0xFF7692AD);

  void changeNotes({required int count}) {
    setState(
      () {
        if (count <= 3) {
          counter = count;
        } else {
          counter = 4;
          buttonText = "Done";
        }
      },
    );
  }

  void changeBackgroundColor({required Color newColor}) {
    setState(() {
      backgroundColor = newColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          elevation: 0.0,
          title: const Text(
            "Xylophone",
            style: TextStyle(
              fontSize: 21.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1F344B),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/learnPage');
              },
              icon: const Center(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 8.0, right: 7.0),
                      child: Icon(
                        Icons.change_circle,
                        color: Color(0xFF1F344B),
                        size: 27.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
          backgroundColor: Colors.blueGrey,
        ),
        drawer: Drawer(
          backgroundColor: const Color(0xFF7692AD),
          child: Column(
            children: [
              DrawerHeader(
                child: Image.asset(
                  'images/xylophonet.png',
                  scale: 2.5,
                ),
              ),
              listing(
                  context: context,
                  text: "H O M E",
                  path: '/homePage',
                  icons: Icons.home),
              listing(
                  context: context,
                  text: "P L A Y",
                  path: '/workPage',
                  icons: Icons.piano),
              listing(
                  context: context,
                  text: "N O T E S",
                  path: '/notesPage',
                  icons: Icons.library_music),
            ],
          ),
        ),
        body: SafeArea(
          child: Row(
            children: [
              Column(
                children: [
                  BuildKeys(
                    note: 1,
                    color: const Color(0xFF394552),
                    boxNum: 1,
                    onTap: () {
                      changeBackgroundColor(
                          newColor:
                              const Color(0xFF394552)); // Change color on tap
                    },
                  ),
                  BuildKeys(
                    note: 2,
                    color: const Color(0xFF414F60),
                    boxNum: 2,
                    onTap: () {
                      changeBackgroundColor(
                          newColor:
                              const Color(0xFF414F60)); // Change color on tap
                    },
                  ),
                  BuildKeys(
                    note: 3,
                    color: const Color(0xFF455667),
                    boxNum: 3,
                    onTap: () {
                      changeBackgroundColor(
                          newColor:
                              const Color(0xFF455667)); // Change color on tap
                    },
                  ),
                  BuildKeys(
                    note: 4,
                    color: const Color(0xFF53677C),
                    boxNum: 4,
                    onTap: () {
                      changeBackgroundColor(
                          newColor:
                              const Color(0xFF53677C)); // Change color on tap
                    },
                  ),
                  BuildKeys(
                    note: 5,
                    color: const Color(0xFF6B84A2),
                    boxNum: 5,
                    onTap: () {
                      changeBackgroundColor(
                          newColor:
                              const Color(0xFF6B84A2)); // Change color on tap
                    },
                  ),
                  BuildKeys(
                    note: 6,
                    color: const Color(0xFF81A2C5),
                    boxNum: 6,
                    onTap: () {
                      changeBackgroundColor(
                          newColor:
                              const Color(0xFF81A2C5)); // Change color on tap
                    },
                  ),
                  BuildKeys(
                    note: 7,
                    color: const Color(0xFF8DB1D5),
                    boxNum: 7,
                    onTap: () {
                      changeBackgroundColor(
                          newColor:
                              const Color(0xFF8DB1D5)); // Change color on tap
                    },
                  ),
                ],
              ),
              const SizedBox(
                width: 9.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 130,
                    width: 130,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black.withOpacity(.5),
                          Colors.black.withOpacity(.1),
                        ],
                      ),
                      color: const Color(0xFF4C5F72),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      margin: const EdgeInsets.all(11.0),
                      child: Transform.rotate(
                        angle: 3.14 / 2,
                        child: Text(
                          notes[counter],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Ubuntu',
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Transform.rotate(
                    angle: 3.14 / 2,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        fixedSize:
                            MaterialStateProperty.all(const Size(100.0, 43.0)),
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xFF222A31)),
                        foregroundColor:
                            MaterialStateProperty.all(const Color(0xFDF9F9FF)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      onPressed: () {
                        counter++;
                        changeNotes(count: counter);
                      },
                      child: Text(
                        buttonText,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
