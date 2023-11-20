import 'package:ecommerce_app/pages/home_page.dart';
import 'package:ecommerce_app/pages/order_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff030e22),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 60,
                left: 15,
                right: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, Animation1, Animation2) =>
                              HomePage(),
                          transitionDuration: Duration(seconds: 0),
                        ),
                      );
                    },
                    child: Container(
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
                  ),
                  Text(
                    'Cart',
                    style: GoogleFonts.montserrat(
                        color: Color(0xffffffff),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
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
                          'assets/list_cart.png',
                          width: 26,
                          height: 28,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                children: [
                  Container(
                    height: 115,
                    decoration: BoxDecoration(
                      color: Color(0xff2c3545),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/newbalance_pink.png',
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 20,
                            left: 16,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nike Air Forcce X-C Girl \nstyle',
                                style: GoogleFonts.montserrat(
                                  color: Color(0xfff8f7fd),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 12),
                              Row(
                                children: [
                                  Text(
                                    'Rp 1,650,000',
                                    style: GoogleFonts.montserrat(
                                      color: Color(0xfff8f7fd),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(width: 28),
                                  OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: Color(0xff565d6a),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(13),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Row(
                                      children: [
                                        Container(
                                          child:
                                              Image.asset('assets/minus.png'),
                                        ),
                                        SizedBox(width: 12),
                                        Container(
                                          child: Text(
                                            '1',
                                            style: GoogleFonts.montserrat(
                                              color: Color(0xfff8f7fd),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 12),
                                        Container(
                                          child: Image.asset('assets/plus.png'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24),
                  Container(
                    height: 115,
                    decoration: BoxDecoration(
                      color: Color(0xff2c3545),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/smart_watch_2.png',
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 20,
                            left: 16,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Smart Watch 2.0 \n',
                                style: GoogleFonts.montserrat(
                                  color: Color(0xfff8f7fd),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 12),
                              Row(
                                children: [
                                  Text(
                                    'Rp 4,500,000',
                                    style: GoogleFonts.montserrat(
                                      color: Color(0xfff8f7fd),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(width: 28),
                                  OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: Color(0xff565d6a),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(13),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Row(
                                      children: [
                                        Container(
                                          child:
                                              Image.asset('assets/minus.png'),
                                        ),
                                        SizedBox(width: 12),
                                        Container(
                                          child: Text(
                                            '1',
                                            style: GoogleFonts.montserrat(
                                              color: Color(0xfff8f7fd),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 12),
                                        Container(
                                          child: Image.asset('assets/plus.png'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
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
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff030e22),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Text(
              'Rp 6,150,000',
              style: GoogleFonts.montserrat(
                color: Color(0xfff8f7fd),
                fontSize: 20,
                fontWeight: FontWeight.bold,
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
                          OrderDetails(),
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
