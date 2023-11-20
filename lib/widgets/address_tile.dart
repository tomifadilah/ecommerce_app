// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddressTile extends StatelessWidget {
  String title;
  String name;
  String phone;
  String address;
  AddressTile(
      {required this.title,
      required this.name,
      required this.phone,
      required this.address});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 12,
            left: 16,
            right: 16,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.montserrat(
                      color: Color(0xfff8f7fd),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Image.asset('assets/arrow_navigation.png'),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xff2c3545),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Image.asset('assets/location.png'),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: GoogleFonts.montserrat(
                          color: Color(0xfff8f7fd),
                        ),
                      ),
                      Text(
                        phone,
                        style: GoogleFonts.montserrat(
                          color: Color(0xfff8f7fd),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: 291,
                        height: 36,
                        child: Text(
                          address,
                          style: GoogleFonts.montserrat(
                            color: Color(0xffcfcfcf),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Divider(
          color: Color(0xff707070),
          thickness: 1,
        ),
      ],
    );
  }
}
