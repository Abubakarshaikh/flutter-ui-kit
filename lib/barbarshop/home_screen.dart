import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/barbarshop/constant.dart';

class BarbarShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: KleftNavBarColor,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Row(
        children: [
          LeftNavbar(),
          Expanded(
            flex: 6,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                color: KhomeScreenBackgroundColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(42),
                    bottomLeft: Radius.circular(42)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Select your new And \nStylish look",
                    style: KhomeTitleStyle,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xfff8f9f9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        fillColor: Color(0xffe2e4e3),
                        hintText: 'search here ..',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Haircut', style: KnavBarTitleStyle),
                        SizedBox(width: 20),
                        Text('Beard', style: KnavBarTitleStyle),
                        SizedBox(width: 20),
                        Text('Haircolor', style: KnavBarTitleStyle),
                        SizedBox(width: 20),
                        Text('Facial', style: KnavBarTitleStyle),
                        SizedBox(width: 20),
                        Text('groom', style: KnavBarTitleStyle),
                      ],
                    ),
                  ),
                  Container(
                    height: 250,
                    width: 200,
                    decoration: BoxDecoration(
                      color: KdetailBackgroundColor,
                      borderRadius: BorderRadius.circular(120),
                    ),
                    child: Container(
                      child: Image.asset('images/barbarshop/haircut.png'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// -------------------------------- LEFT NAVBAR ------------------------------------
class LeftNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        padding: EdgeInsets.only(bottom: 50),
        decoration: BoxDecoration(
          color: KleftNavBarColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('images/barbarshop/logo.png'),
            SizedBox(height: 10),
            RotatedText(
              title: 'All styles',
            ),
            RotatedText(
              title: 'Popular',
            ),
            RotatedText(
              title: 'Trending',
            ),
            RotatedText(
              title: 'New',
            ),
          ],
        ),
      ),
    );
  }
}

class RotatedText extends StatelessWidget {
  final title;
  RotatedText({required this.title});
  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 3,
      child: Text(title, style: KRotatedTextStyle),
    );
  }
}
