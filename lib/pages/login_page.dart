import 'package:ecommerce_app/pages/home_page.dart';
import 'package:ecommerce_app/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff030E22),
      body: Padding(
        padding: const EdgeInsets.only(top: 134.0, left: 40, right: 40),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/icon_logo.png',
                width: 80,
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Let's Sign You In.",
              style: GoogleFonts.montserrat(
                color: Color(0xfff8f7fd),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40),
            Container(
              height: 40,
              width: 295,
              child: TextFormField(
                style: GoogleFonts.montserrat(
                  color: Color(0xfff8f7fd),
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 20, top: 11),
                  fillColor: Color(0xff23c3545),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Email',
                  hintStyle: GoogleFonts.montserrat(
                    color: Color(0xff68687a),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(
              height: 40,
              width: 295,
              child: TextFormField(
                cursorColor: Colors.white,
                obscureText: true,
                style: GoogleFonts.montserrat(
                  color: Color(0xfff8f7fd),
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 20, top: 11),
                  fillColor: Color(0xff23c3545),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Password',
                  hintStyle: GoogleFonts.montserrat(
                    color: Color(0xff68687a),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Image.asset(
                  'assets/mini_rectangle.png',
                  width: 20,
                ),
                SizedBox(width: 8),
                Text(
                  'Remember Me',
                  style: GoogleFonts.montserrat(
                    color: Color(0xfff7f8fd),
                    fontSize: 12,
                  ),
                ),
                SizedBox(width: 67),
                Text(
                  'Forgot Password',
                  style: GoogleFonts.montserrat(
                    color: Color(0xfff7f8fd),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            SizedBox(height: 39),
            Container(
              width: 295,
              height: 47,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xff6c5ecf),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Text(
                  'Login',
                  style: GoogleFonts.montserrat(
                    color: Color(0xfff8f7fd),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have account?",
                  style: GoogleFonts.montserrat(
                    color: Color(0xfff8f7fd),
                    fontSize: 12,
                  ),
                ),
                SizedBox(width: 4),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterPage()),
                    );
                  },
                  child: Text(
                    'Register',
                    style: GoogleFonts.montserrat(
                        color: Color(0xff6c53cf),
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
