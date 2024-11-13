import 'package:flutter/material.dart';

var kButtonStyle = ButtonStyle(
  backgroundColor: MaterialStateProperty.all(const Color(0xFF222A31)),
  foregroundColor: MaterialStateProperty.all(const Color(0xFDF9F9FF)),
  fixedSize: MaterialStateProperty.all(const Size(209.0, 43.0)),
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
  ),
);
