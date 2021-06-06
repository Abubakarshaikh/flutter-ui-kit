import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/devrant/screens/login_screen.dart';
import 'package:flutter_ui_kit/devrant/screens/singup_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_ui_kit/devrant/constant.dart';

class DevrantApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        primaryColor: KbackgroundColor,
        scaffoldBackgroundColor: KbackgroundColor,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 36.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
                flex: 5,
                child: Image(image: AssetImage('images/devrant/devrant1.png'))),
            Flexible(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: GoogleFonts.comfortaa(
                    fontSize: 44.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
                  text: "${KtextData['hometitle1']}\n",
                  children: [
                    TextSpan(
                      style: GoogleFonts.comfortaa(
                        fontSize: 19.0,
                        color: Color(0xffc8c8d0),
                        fontWeight: FontWeight.w800,
                      ),
                      text: "${KtextData['hometitle2']}",
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 28),
            Flexible(
              flex: 2,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 22, vertical: 26),
                color: KHomeFooterColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              KButtonColor1,
                            ),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            )),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return SignupScreen();
                          }));
                        },
                        child: Text(
                          "${KtextData['buttontitle1']}",
                          style: GoogleFonts.comfortaa(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        KButtonColor2),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                                  ),
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return LoginScreen();
                                    }));
                                  },
                                  child: Text(
                                    "${KtextData['buttontitle2']}",
                                    style: GoogleFonts.comfortaa(
                                      fontSize: 16.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ))),
                          SizedBox(width: 10),
                          Expanded(
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        KButtonColor2),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "${KtextData['buttontitle3']}",
                                    style: GoogleFonts.comfortaa(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ))),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
