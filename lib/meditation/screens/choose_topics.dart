import 'package:flutter/material.dart';

class ChooseTopics extends StatelessWidget {
  const ChooseTopics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/union.png"),
          ),
        ),
      ),
    );
  }
}
