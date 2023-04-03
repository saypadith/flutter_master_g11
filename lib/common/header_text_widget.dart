import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  HeaderText({super.key, required this.text, this.textSize = 24});
  final String text;
  double textSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: textSize, fontWeight: FontWeight.bold),
    );
  }
}
