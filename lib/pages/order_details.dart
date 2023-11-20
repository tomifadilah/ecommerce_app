import 'package:ecommerce_app/pages/payment_success.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff030e22),
      body: SingleChildScrollView(
        child: Padding(
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/arrow_back.png',
                          width: 26,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 76),
                  Text(
                    'Order Details',
                    style: GoogleFonts.montserrat(
                      color: Color(0xffffffff),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 26,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shipping Information',
                      style: GoogleFonts.montserrat(
                        color: Color(0xfff8f7fd),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Edit Address',
                      style: GoogleFonts.montserrat(
                        color: Color(0xff68687a),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/location.png',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 8),
                  Container(
                    width: 295,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jhon Doe',
                          style: GoogleFonts.montserrat(
                            color: Color(0xffcfcfcf),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '(62) 876 1234 3446',
                          style: GoogleFonts.montserrat(
                            color: Color(0xffcfcfcf),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Toko Mas - Jl. Nangka Sari No. 24D, Kecamatan Ngoy Kota Surabaya',
                          style: GoogleFonts.montserrat(
                            color: Color(0xffcfcfcf),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Order Summary',
                      style: GoogleFonts.montserrat(
                        color: Color(0xfff8f7fd),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),
                    Container(
                      width: 343,
                      height: 115,
                      decoration: BoxDecoration(
                        color: Color(0xff2c3545),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          Image.asset('assets/newbalance_pink.png'),
                          Padding(
                            padding: const EdgeInsets.only(top: 24.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Nike Air Force X-AC Girl \nStyle',
                                  style: GoogleFonts.montserrat(
                                      color: Color(0xfff8f7fd),
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 12),
                                Text(
                                  'Rp 1,650,000',
                                  style: GoogleFonts.montserrat(
                                      color: Color(0xfff8f7fd),
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16),
                    Container(
                      width: 343,
                      height: 115,
                      decoration: BoxDecoration(
                        color: Color(0xff2c3545),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          Image.asset('assets/smart_watch.png'),
                          Padding(
                            padding: const EdgeInsets.only(top: 24.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Smart Watch 2.0 \n ',
                                  style: GoogleFonts.montserrat(
                                    color: Color(0xfff8f7fd),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 12),
                                Text(
                                  'Rp 4,500,000',
                                  style: GoogleFonts.montserrat(
                                      color: Color(0xfff8f7fd),
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Payment Method',
                    style: GoogleFonts.montserrat(
                      color: Color(0xfff8f7fd),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Choose Payment',
                    style: GoogleFonts.montserrat(
                      color: Color(0xff68687a),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xff2c3545),
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Image.asset(
                        'assets/visa.png',
                      ),
                    ),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Visa Classic',
                          style: GoogleFonts.montserrat(
                            color: Color(0xffcfcfcf),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '***-932',
                          style: GoogleFonts.montserrat(
                            color: Color(0xffcfcfcf),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              Row(
                children: [
                  Text(
                    'Notes',
                    style: GoogleFonts.montserrat(
                        color: Color(0xfff8f7fd),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Container(
                width: 343,
                height: 40,
                child: TextFormField(
                  cursorColor: Colors.white,
                  style: GoogleFonts.montserrat(
                    color: Color(0xfff8f7fd),
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(
                      top: 12,
                      bottom: 12,
                      left: 12,
                    ),
                    fillColor: Color(0xff2c3545),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Additional Note',
                    hintStyle: GoogleFonts.montserrat(
                      color: Color(0xff68687a),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff030e22),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Text(
              'Rp 4,650,000',
              style: GoogleFonts.montserrat(
                color: Color(0xfff8f7fd),
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 153,
              height: 47,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xff6c5ecf),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, Animation1, Animation2) =>
                          PaymentSuccess(),
                      transitionDuration: Duration(seconds: 0),
                    ),
                  );
                },
                child: Text(
                  'Checkout',
                  style: GoogleFonts.montserrat(
                    color: Color(0xfff8f7fd),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
