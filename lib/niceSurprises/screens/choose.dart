import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/niceSurprises/widgets/image_box.dart';
import 'package:flutter_ui_kit/niceSurprises/widgets/circle.dart';
import 'package:flutter_ui_kit/niceSurprises/widgets/tab_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_ui_kit/niceSurprises/constant.dart';

class Choose extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              flex: 3,
              child: ImageBox(image: Kimages[2]),
            ),
            SizedBox(height: 6),
            Flexible(
              child: Text(
                '${KtextData['chooseTitle']}',
                textAlign: TextAlign.center,
                style: GoogleFonts.abrilFatface(
                  fontSize: 42.0,
                ),
              ),
            ),
            SizedBox(height: 1),
            Flexible(
              child: Text(
                '${KtextData['chooseDes']}',
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
              child: TabButton(
                color: KtabButtonColor1,
                textColor: Colors.black87,
                onPress: () {},
              ),
            ),
            SizedBox(height: 2),
            Flexible(
              child: Padding(
                padding: KcirclePadding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Circle(color: KcircleColor2.shade400),
                    Circle(color: KcircleColor1),
                    Circle(color: KcircleColor2.shade400),
                  ],
                ),
              ),
            ),
            SizedBox(height: 6),
          ],
        ),
      ),
    );
  }
}
