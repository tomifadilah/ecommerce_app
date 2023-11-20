// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormTile extends StatelessWidget {
  String title;
  String hinttext;
  FormTile({required this.title, required this.hinttext});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.montserrat(
            color: Color(0xfff8f7fd),
            fontWeight: FontWeight.w500,
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
              hintText: hinttext,
              hintStyle: GoogleFonts.montserrat(
                color: Color(0xff68687a),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
