import 'package:flutter/material.dart';

class DriverDetailsTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;

  const DriverDetailsTextField({
    required this.controller,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(
          fontFamily: 'Roboto', // Your font family
          fontWeight: FontWeight.bold, // For making the font bold
        ),
      ),
    );
  }
}
