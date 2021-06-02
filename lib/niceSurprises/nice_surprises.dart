import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/niceSurprises/screens/be_happy.dart';
import 'package:flutter_ui_kit/niceSurprises/screens/advise.dart';
import 'package:flutter_ui_kit/niceSurprises/screens/choose.dart';
import 'package:flutter_ui_kit/niceSurprises/constant.dart';

class NiceSurprises extends StatelessWidget {
  final controller = PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        primaryColor: KbackgroundColor,
        scaffoldBackgroundColor: KbackgroundColor,
      ),
      home: Scaffold(
        body: PageView(
          scrollDirection: Axis.horizontal,
          controller: controller,
          children: [
            Advise(),
            Choose(),
            BeHappy(),
          ],
        ),
      ),
    );
  }
}
