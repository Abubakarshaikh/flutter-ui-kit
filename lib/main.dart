import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/barbarshop/home_screen.dart';
import 'clothesRentalApp/home_screen.dart';
import 'package:flutter_ui_kit/niceSurprises/nice_surprises.dart';
import 'package:flutter_ui_kit/devrant/screens/devrant_home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ui's Kits"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 12),
        children: [
          MenuButton(
            title: 'Barbar shop',
            screen: BarbarShop(),
          ),
          MenuButton(
            title: 'cloth rental app',
            screen: ClothRentalApp(),
          ),
          MenuButton(
            title: 'Nice Surprises',
            screen: NiceSurprises(),
          ),
          MenuButton(
            title: 'dev rant app',
            screen: DevrantApp(),
          ),
        ],
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  final String title;
  final Widget screen;
  MenuButton({required this.title, required this.screen});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(RoundedRectangleBorder()),
      ),
      child: Text(title),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return screen;
        }));
      },
    );
  }
}
