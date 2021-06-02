import 'package:flutter/material.dart';

class ImageBox extends StatelessWidget {
  final String image;
  ImageBox({required this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 250,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
