import 'package:ecommerce_app/widgets/form_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff030e22),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 60, left: 16, right: 16, bottom: 22),
              child: Row(
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
                    'Edit Adress',
                    style: GoogleFonts.montserrat(
                        color: Color(0xfff8f7fd),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                FormTile(title: 'Address', hinttext: 'Address 1'),
                FormTile(title: 'Name', hinttext: 'Jhon Doe'),
                FormTile(title: 'Phone Number', hinttext: '+62 347 153 428'),
                FormTile(
                    title: 'Road Name - House Number',
                    hinttext: 'Jl. Semangka No 12'),
                FormTile(title: 'Province', hinttext: 'Jawa Barat'),
                FormTile(title: 'City', hinttext: 'Bogor'),
                FormTile(title: 'Subdistric', hinttext: 'Bogor Tengah'),
                FormTile(title: 'Code POS', hinttext: '1243'),
                FormTile(
                    title: 'Additional Information', hinttext: 'Toko Bangunan'),
              ],
            ),
            SizedBox(
              height: 40,
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
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
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
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
