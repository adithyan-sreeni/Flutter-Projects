import 'package:flutter/material.dart';

class TxtBox extends StatelessWidget {
  final String textHint;
  final Color outlineColor;
  final Color hintColor;

  const TxtBox({
    super.key,
    required this.textHint,
    this.outlineColor = const Color(0xFF747e87),
    this.hintColor = const Color(0xFF747e87),
  });

  @override
  Widget build(BuildContext context) {
    return //TextField(
        //   decoration: InputDecoration(
        //     hintText: textHint,
        //     filled: true,
        //     fillColor: const Color(0xFF1C2A33),
        //     hintStyle: TextStyle(color: hintColor),
        //     contentPadding:
        //         const EdgeInsets.symmetric(horizontal: 15.0, vertical: 12.0),
        //   ),
        // );
        // borderRadius: BorderRadius.circular(10.0),

        TextField(
      style: const TextStyle(
// Adjust the font size        fontSize: 20.0,
        height: 1.8, // Adjust the height
      ),
      decoration: InputDecoration(
        hintText: textHint,
        filled: true,
        fillColor:
            const Color(0xFF1C2A33), // Set the filled color to rgb(28, 42, 51)
        hintStyle: TextStyle(
            color: hintColor,
            letterSpacing: 1.4,
            wordSpacing: 1), // Set hint color to rgb(116, 126, 135)

        border: OutlineInputBorder(
          borderSide: BorderSide(
              color: outlineColor), // Set outline color to rgb(116, 126, 135)
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
