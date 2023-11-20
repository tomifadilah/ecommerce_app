// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationTile extends StatelessWidget {
  String title;
  String text;
  String imageUrl;
  String time;
  NotificationTile(
      {required this.title,
      required this.text,
      required this.imageUrl,
      required this.time});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 16,
            bottom: 16,
            left: 20,
            right: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.montserrat(
                  color: Color(0xff6c5ecf),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                text,
                style: GoogleFonts.montserrat(
                  color: Color(0xffcfcfcf),
                  fontSize: 12,
                ),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Image.asset(
                    imageUrl,
                    width: 16,
                  ),
                  SizedBox(width: 8),
                  Text(
                    time,
                    style: GoogleFonts.montserrat(
                      color: Color(0xff8a99ab),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 12),
        Divider(
          color: Color(0xff707070),
          thickness: 2,
        ),
      ],
    );
  }
}
