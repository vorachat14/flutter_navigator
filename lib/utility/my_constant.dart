import 'package:flutter/material.dart';

class Myconstant {
  //field
  static Color primary = Color.fromARGB(255, 0, 0, 0);
  static Color dark = Color.fromARGB(255, 0, 0, 0);
  static Color light = Color.fromARGB(255, 0, 0, 0);

  //method
  BoxDecoration curveBorderBox() => BoxDecoration(
        border: Border.all(
          color: Myconstant.dark,
        ),
        borderRadius: BorderRadius.circular(18),
      );

  BoxDecoration planBox() => BoxDecoration(
        color: primary,
      );

  TextStyle h1Style() {
    return TextStyle(
      color: dark,
      fontSize: 36,
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle h2Style() {
    return TextStyle(
      color: dark,
      fontSize: 18,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle h3Style() {
    return TextStyle(
      color: dark,
      fontSize: 14,
      fontWeight: FontWeight.normal,
    );
  }

  TextStyle h3ActiveStyle() {
    return const TextStyle(
      color: Colors.blueAccent,
      fontSize: 14,
      fontWeight: FontWeight.w500,
    );
  }
}
