import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
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
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Login\n',
                  style: GoogleFonts.comfortaa(
                    fontSize: 36.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    height: 1.35,
                  ),
                  children: [
                    TextSpan(
                      text: 'You know the deal',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 18.0,
                        color: Color(0xffc8c8d0),
                      ),
                    ),
                  ],
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
                      overlayColor:
                          MaterialStateProperty.all(Color(0xffae5365)),
                      backgroundColor: MaterialStateProperty.all(
                        Color(0xffd55061),
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      )),
                  child: Text(
                    'Login',
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
            Flexible(
              child: TextButton(
                child: Text(
                  'Forgot password?',
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                  ),
                ),
                onPressed: () {},
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
