import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(top: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Flexible(
              child: Container(
                alignment: Alignment.topLeft,
                height: 50,
                child: TextButton(
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                  ),
                  child: Icon(Icons.close, color: Colors.white, size: 40),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
            Flexible(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 26),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Join devRant\n',
                    style: GoogleFonts.comfortaa(
                      fontSize: 32.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      height: 1.2,
                    ),
                    children: [
                      TextSpan(
                        text:
                            "Post your own rants. Vote and comments on other' rants.",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 17.0,
                          color: Color(0xffc8c8d0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 22),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Container(
                  height: 58,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        width: 1.5,
                        color: Color(0xff80cbc4),
                      )),
                      icon:
                          Icon(Icons.email, color: Color(0xffabaabb), size: 30),
                      hintText: 'Email or Username',
                      hintStyle: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 18.0,
                        color: Color(0xffabaabb),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Container(
                  height: 58,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        width: 1.5,
                        color: Color(0xff80cbc4),
                      )),
                      icon: Icon(Icons.person,
                          color: Color(0xffabaabb), size: 30),
                      hintStyle: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 18.0,
                        color: Color(0xffabaabb),
                      ),
                      hintText: 'Username',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Container(
                  height: 58,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        width: 1.5,
                        color: Color(0xff80cbc4),
                      )),
                      icon:
                          Icon(Icons.lock, color: Color(0xffabaabb), size: 30),
                      hintStyle: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 18.0,
                        color: Color(0xffabaabb),
                      ),
                      hintText: 'Password',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Flexible(
              child: Container(
                height: 58,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color(0xffd55061),
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      )),
                  child: Text(
                    'Sign Up',
                    style: GoogleFonts.comfortaa(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(height: 10),
            Flexible(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "By tapping 'Sign Up', you agree to the Term of Services & Privacy Policy. FYI we never show your email to other members.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    fontSize: 12.5,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
