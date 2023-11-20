import 'package:ecommerce_app/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff030e22),
      body: Padding(
        padding: const EdgeInsets.only(top: 130.0, left: 40, right: 40),
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
              'Register',
              style: GoogleFonts.montserrat(
                color: Color(0xfff8f7fd),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40),
            Container(
              width: 295,
              height: 40,
              child: TextFormField(
                style: GoogleFonts.montserrat(
                  color: Color(0xfff8f7fd),
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 11, left: 20),
                  fillColor: Color(0xff23c3545),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Name',
                  hintStyle: GoogleFonts.montserrat(
                    color: Color(0xff68687a),
                  ),
                ),
              ),
            ),
            SizedBox(height: 14),
            Container(
              width: 295,
              height: 40,
              child: TextFormField(
                style: GoogleFonts.montserrat(
                  color: Color(0xfff7f8fd),
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 11, left: 20),
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
            SizedBox(height: 14),
            Container(
              width: 295,
              height: 40,
              child: TextFormField(
                cursorColor: Colors.white,
                obscureText: true,
                style: GoogleFonts.montserrat(
                  color: Color(0xfff8f7fd),
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 11, left: 20),
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
            SizedBox(height: 14),
            Container(
              width: 295,
              height: 40,
              child: TextFormField(
                cursorColor: Colors.white,
                obscureText: true,
                style: GoogleFonts.montserrat(
                  color: Color(0xfff8f7fd),
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 11, left: 20),
                  fillColor: Color(0xff23c3545),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Cofirm Password',
                  hintStyle: GoogleFonts.montserrat(
                    color: Color(0xff686871),
                  ),
                ),
              ),
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
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Text(
                  'Register',
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
                  'Already have account',
                  style: GoogleFonts.montserrat(
                      color: Color(0xfff8f7fd), fontSize: 12),
                ),
                SizedBox(width: 4),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: Text(
                    'Login',
                    style: GoogleFonts.montserrat(
                        color: Color(0xff6c53cf),
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
