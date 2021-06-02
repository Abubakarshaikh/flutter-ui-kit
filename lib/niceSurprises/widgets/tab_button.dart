import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabButton extends StatelessWidget {
  final Color color;
  final Color textColor;
  final Function onPress;
  TabButton(
      {required this.color, required this.textColor, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        side: MaterialStateProperty.all(
          BorderSide(
            width: 0.4,
            color: Colors.grey,
          ),
        ),
        minimumSize: MaterialStateProperty.all(Size(double.infinity, 50)),
        backgroundColor: MaterialStateProperty.all(color),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      ),
      child: Text('Next',
          style: GoogleFonts.kanit(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
            color: textColor,
          )),
      onPressed: onPress(),
    );
  }
}
