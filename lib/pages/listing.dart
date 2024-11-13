import 'package:flutter/material.dart';

Widget listing(
    {required BuildContext context,
    required String text,
    required String path,
    required IconData icons}) {
  return ListTile(
    leading: Icon(icons, size: 23.0),
    title: Text(
      text,
      style: const TextStyle(
        fontSize: 13.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    onTap: () {
      Navigator.pop(context);
      Navigator.pushNamed(context, path);
    },
  );
}

List<String> notes = <String>[
  "N O T E S :       1 , 2 , 3 , 2 , 4|5 , 4 , 3 , 4 , 5|6, 5, 4, 3, 2, 1|",
  "N O T E S :       1 , 1 , 5 , 5 ,6, 6 , 5 || 4 , 4 , 3, 3 , 2 , 2 , 1|",
  "N O T E S :       5 , 3 , 6 , 2 , 4|  1 , 7 , 2 , 4 , 6|5, 3, 2, 5, 1, 7|",
  "N O T E S :       1 , 4 , 3 , 5 , 2|6 , 1 , 5 , 4 , 3|7, 2, 6, 1, 4, 3|",
  "Congrats! \nYou have COMPLETED the Lessons"
];
