import 'package:ecommerce_app/pages/cart_page.dart';
import 'package:ecommerce_app/pages/home_page.dart';
import 'package:ecommerce_app/pages/order_details.dart';
import 'package:ecommerce_app/widgets/product_list.dart';
import 'package:ecommerce_app/widgets/variations_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatelessWidget {
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
                      child: Image.asset(
                        'assets/arrow_back.png',
                        width: 26,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, Animation1, Animation2) =>
                              CartPage(),
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
                      child: Image.asset(
                        'assets/list_cart.png',
                        width: 26,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              'assets/nike_pink.png',
              width: 375,
              height: 387,
            ),
            Image.asset(
              'assets/three_dots.png',
              height: 10,
              width: 28,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 26,
                left: 15,
                right: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nike Air Force X-AC Girl Style',
                    style: GoogleFonts.montserrat(
                      color: Color(0xfff8f7fd),
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Image.asset('assets/star_aktif.png'),
                      Image.asset('assets/star_aktif.png'),
                      Image.asset('assets/star_aktif.png'),
                      Image.asset('assets/star_aktif.png'),
                      Image.asset('assets/star.png'),
                      SizedBox(width: 8),
                      Text(
                        '(16)',
                        style: GoogleFonts.montserrat(
                          color: Color(0xffcfcfcf),
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Text(
                        'Rp 1,650,000.00',
                        style: GoogleFonts.montserrat(
                          color: Color(0xfff8f7fd),
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        '3,850,000.00',
                        style: GoogleFonts.montserrat(
                            color: Color(0xffcfcfcf),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ],
                  ),
                  SizedBox(height: 32),
                  Text(
                    'Choose Variantions',
                    style: GoogleFonts.montserrat(
                      color: Color(0xfff8f7fd),
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 59,
                        height: 59,
                        decoration: BoxDecoration(
                          color: Color(0xff2c3545),
                          border: Border(
                            left: BorderSide(
                              color: Color(0xff6c5ecf),
                            ),
                            right: BorderSide(
                              color: Color(0xff6c5ecf),
                            ),
                            top: BorderSide(
                              color: Color(0xff6c5ecf),
                            ),
                            bottom: BorderSide(
                              color: Color(0xff6c5ecf),
                            ),
                          ),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '32',
                              style: GoogleFonts.montserrat(
                                color: Color(0xfff8f7fd),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      VariationsTile(number: '37'),
                      VariationsTile(number: '38'),
                      VariationsTile(number: '39'),
                      VariationsTile(number: '40'),
                    ],
                  ),
                  SizedBox(height: 24),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Descriptions',
                        style: GoogleFonts.montserrat(
                            color: Color(0xfff8f7fd),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'This shoes material is canvas press with foam mat, bring back your high school moment with this shoes. Choose your size and just wait for it.',
                        style: GoogleFonts.montserrat(
                          color: Color(0xffcfcfcf),
                        ),
                      ),
                      SizedBox(height: 24),
                      Text(
                        'Related Products',
                        style: GoogleFonts.montserrat(
                          color: Color(0xfff8f7fd),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 16),
                      Column(
                        children: [
                          Row(
                            children: [
                              ProductList(
                                imageUrl: 'assets/nike_yezzy.png',
                                nameProduct: 'Nike Yeezy T-20...',
                                rating: 'assets/star_aktif.png',
                                ratings: 'assets/star.png',
                                amount: '(105)',
                                price: 'Rp 1,237,000',
                              ),
                              SizedBox(width: 16),
                              ProductList(
                                imageUrl: 'assets/nike_biru.png',
                                nameProduct: 'Nike P-Y671 Exc...',
                                rating: 'assets/star_aktif.png',
                                ratings: 'assets/star.png',
                                amount: '(11)',
                                price: 'Rp 1,237,000',
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          Row(
                            children: [
                              ProductList(
                                imageUrl: 'assets/nike_oren.png',
                                nameProduct: 'Nike Kenzy Nic...',
                                rating: 'assets/star_aktif.png',
                                ratings: 'assets/star.png',
                                amount: '(76)',
                                price: 'Rp 650,000',
                              ),
                              SizedBox(width: 16),
                              ProductList(
                                imageUrl: 'assets/newbalance_pink.png',
                                nameProduct: 'Nike Air Force X...',
                                rating: 'assets/star_aktif.png',
                                ratings: 'assets/star.png',
                                amount: '(36)',
                                price: 'Rp 1,650,000',
                              ),
                            ],
                          ),
                          SizedBox(height: 32),
                          Text(
                            "You've reached the end",
                            style: GoogleFonts.montserrat(
                              color: Color(0xfff8f7fd),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: BottomNavigationBar(
          backgroundColor: Color(0xff030e22),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Text(
                'Rp 1,650,000',
                style: GoogleFonts.montserrat(
                    color: Color(0xfff8f7fd),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/add_cart.png',
                width: 40,
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
                    'Buy Now',
                    style: GoogleFonts.montserrat(
                      color: Color(0xfff8f7fd),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
