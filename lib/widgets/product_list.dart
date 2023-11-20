// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductList extends StatelessWidget {
  String imageUrl;
  String nameProduct;
  String rating;
  String ratings;
  String amount;
  String price;

  ProductList(
      {required this.imageUrl,
      required this.nameProduct,
      required this.rating,
      required this.ratings,
      required this.amount,
      required this.price});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 260,
          width: 164,
          decoration: BoxDecoration(
            color: Color(0xff2c3545),
            borderRadius: BorderRadius.circular(28),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  imageUrl,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        nameProduct,
                        style: GoogleFonts.montserrat(
                          color: Color(0xfff8f7fd),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Image.asset(
                            rating,
                            width: 16,
                          ),
                          Image.asset(
                            rating,
                            width: 16,
                          ),
                          Image.asset(
                            rating,
                            width: 16,
                          ),
                          Image.asset(
                            rating,
                            width: 16,
                          ),
                          Image.asset(
                            ratings,
                            width: 16,
                          ),
                          SizedBox(width: 4),
                          Text(
                            amount,
                            style: GoogleFonts.montserrat(
                                color: Color(0xffcfcfcf),
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(
                        price,
                        style: GoogleFonts.montserrat(
                            color: Color(0xfff8f7fd),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
