import 'package:flutter/material.dart';

class CButton extends StatelessWidget {
  final String clrval;
  const CButton(this.clrval);

  int hexColor(String color) {
    String newColor = '0xFF$color';
    newColor = newColor.replaceAll('#', '');
    int finalColor = int.parse(newColor);
    return finalColor;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(hexColor(clrval)),
      ),
    ));
  }
}
