import 'package:ecommerce_app/pages/home_page.dart';
import 'package:ecommerce_app/pages/order_history.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentSuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff030e22),
      body: Column(
        children: [
          SizedBox(
            height: 167,
          ),
          Center(
            child: Image.asset(
              'assets/payment_success.png',
              width: 209.8,
              height: 233.11,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 30,
              left: 20,
              right: 20,
            ),
            child: Column(
              children: [
                Text(
                  'Payment Success',
                  style: GoogleFonts.montserrat(
                      color: Color(0xfff8f7fd),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'hoorayyy!! your payment was successful! just wait for it to arrive soon!',
                  style: GoogleFonts.montserrat(
                    color: Color(0xffcfcfcf),
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 55,
          ),
          Container(
            width: 295,
            height: 47,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color(0xff6C5ECF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, Animation1, Animation2) =>
                        OrderHistory(),
                    transitionDuration: Duration(seconds: 0),
                  ),
                );
              },
              child: Text(
                'Track Order Status',
                style: GoogleFonts.montserrat(
                    color: Color(0xfff8f7fd),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            width: 295,
            height: 47,
            child: TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, Animation1, Animation2) =>
                          HomePage(),
                    ),
                  );
                },
                child: Text(
                  'Back to Home',
                  style: GoogleFonts.montserrat(
                      color: Color(0xff6c5ecf),
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                )),
          ),
        ],
      ),
    );
  }
}
