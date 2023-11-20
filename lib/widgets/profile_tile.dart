// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileTile extends StatelessWidget {
  String imageUrl;
  String title;
  ProfileTile({required this.imageUrl, required this.title});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 64,
          width: 64,
          decoration: BoxDecoration(
            color: Color(0xff2c3545),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Image.asset(imageUrl),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          title,
          style:
              GoogleFonts.montserrat(color: Color(0xffff8f7fd), fontSize: 12),
        ),
      ],
    );
  }
}
