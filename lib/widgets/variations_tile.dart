// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VariationsTile extends StatelessWidget {
  String number;
  // ignore: use_key_in_widget_constructors
  VariationsTile({required this.number});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 59,
      height: 59,
      decoration: BoxDecoration(
        color: Color(0xff2c3545),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            number,
            style: GoogleFonts.montserrat(
              color: Color(0xfff8f7fd),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
