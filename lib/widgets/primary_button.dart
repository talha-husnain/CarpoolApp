import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final buttonWidth = 300.0;
    final buttonHeight = 100.0;

    final marginVertical = 5.0;
    final marginHorizontal = 30.0;

    final paddingVertical = 10.0;
    final paddingHorizontal = 65.0;

    final margin = EdgeInsets.fromLTRB(
      marginHorizontal,
      marginVertical,
      marginHorizontal,
      0,
    );

    final padding = EdgeInsets.symmetric(
      vertical: paddingVertical,
      horizontal: paddingHorizontal,
    );

    return Container(
      margin: margin,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: Colors.black.withOpacity(0.8), // Black with opacity 0.8
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Padding(
          padding: padding,
          child: Text(
            text,
            style: TextStyle(
              color: Color(0xFFAE8A49),
              fontSize: 20,
              fontFamily: 'stylish',
            ),
          ),
        ),
      ),
    );
  }
}
