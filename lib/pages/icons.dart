import 'package:flutter/material.dart';

class CIcon extends StatelessWidget {
  final IconData img;
  const CIcon(this.img);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: const Color(0XffE8E8E8),
          )),
      height: 30,
      width: 30,
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(img),
        color: Colors.black,
      ),
    ));
  }

  void onPressed() {}
}
