import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_ui_kit/niceSurprises/widgets/image_box.dart';
import 'package:flutter_ui_kit/niceSurprises/widgets/tab_button.dart';
import 'package:flutter_ui_kit/niceSurprises/constant.dart';

class BeHappy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              flex: 3,
              child: ImageBox(image: Kimages[1]),
            ),
            SizedBox(height: 6),
            Flexible(
              child: Text(
                '${KtextData['beHappyTitle']}',
                textAlign: TextAlign.center,
                style: GoogleFonts.abrilFatface(
                  fontSize: 42.0,
                  // fontWeight: FontWeight.values[2],
                ),
              ),
            ),
            SizedBox(height: 1),
            Flexible(
              child: Text(
                '${KtextData['beHappyDes']}',
                textAlign: TextAlign.center,
                style: GoogleFonts.lora(
                  letterSpacing: 1,
                  wordSpacing: 3,
                  height: 1.5,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
            Spacer(),
            Flexible(
              flex: 1,
              child: TabButton(
                color: KtabButtonColor2.shade600,
                textColor: Colors.white,
                onPress: () {},
              ),
            ),
            SizedBox(height: 2),
            Flexible(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: GoogleFonts.notoSans(
                      color: Colors.grey.shade600,
                    ),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Sign in',
                      style: GoogleFonts.notoSans(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 6),
          ],
        ),
      ),
    );
  }
}
