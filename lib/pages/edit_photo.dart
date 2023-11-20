import 'package:ecommerce_app/widgets/form_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditPhoto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff030e22),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 60,
          left: 16,
          right: 16,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xff2c3545),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Image.asset('assets/arrow_back.png'),
                ),
                SizedBox(
                  width: 76,
                ),
                Text(
                  'Edit Profile',
                  style: GoogleFonts.montserrat(
                    color: Color(0xfff8f7fd),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 33,
            ),
            Image.asset('assets/edit_photo.png'),
            SizedBox(
              height: 33,
            ),
            FormTile(title: 'Name', hinttext: 'Jhon Doe'),
            SizedBox(
              height: 16,
            ),
            FormTile(title: 'Email', hinttext: 'Jhon@gmail.com'),
            SizedBox(
              height: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Password',
                  style: GoogleFonts.montserrat(
                    color: Color(0xfff8f7fd),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  width: 343,
                  height: 47,
                  child: TextFormField(
                    cursorColor: Colors.white,
                    obscureText: true,
                    style: GoogleFonts.montserrat(
                      color: Color(0xfff8f7fd),
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 11, left: 20),
                      fillColor: Color(0xff2c3545),
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
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Confirm Password',
                  style: GoogleFonts.montserrat(
                    color: Color(0xfff8f7fd),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  width: 343,
                  height: 47,
                  child: TextFormField(
                    cursorColor: Colors.white,
                    obscureText: true,
                    style: GoogleFonts.montserrat(
                      color: Color(0xfff8f7fd),
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 11, left: 20),
                      fillColor: Color(0xff2c3545),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide.none,
                      ),
                      hintText: 'Confirm Password',
                      hintStyle: GoogleFonts.montserrat(
                        color: Color(0xff68687a),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 28,
            ),
            Container(
              width: 343,
              height: 47,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xff6c53cf),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Save',
                  style: GoogleFonts.montserrat(
                    color: Color(0xfff8f7fd),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              width: 343,
              height: 47,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Discard',
                  style: GoogleFonts.montserrat(
                    color: Color(0xfff8f7fd),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
