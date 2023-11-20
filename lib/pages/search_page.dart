import 'package:ecommerce_app/pages/cart_page.dart';
import 'package:ecommerce_app/pages/home_page.dart';
import 'package:ecommerce_app/widgets/product_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff030e22),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 15, right: 15),
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xff2c3545),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, Animation1, Animation2) =>
                                HomePage(),
                          ),
                        );
                      },
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
                  SizedBox(width: 8),
                  Flexible(
                    child: Container(
                      width: 295,
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
                          ),
                          fillColor: Color(0xff2c3545),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21),
                            borderSide: BorderSide.none,
                          ),
                          hintText: "I'm search for...",
                          hintStyle: GoogleFonts.montserrat(
                            color: Color(0xff68687a),
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color(0xff68687a),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
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
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 24,
                left: 15,
                right: 15,
                bottom: 60,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      ProductList(
                        imageUrl: 'assets/newbalance_pink.png',
                        nameProduct: 'Nike Air Force X',
                        rating: 'assets/star_aktif.png',
                        ratings: 'assets/star.png',
                        amount: '(16)',
                        price: '1,650,000',
                      ),
                      SizedBox(width: 16),
                      ProductList(
                        imageUrl: 'assets/nike_merah.png',
                        nameProduct: 'Nike Air X-203F...',
                        rating: 'assets/star_aktif.png',
                        ratings: 'assets/star.png',
                        amount: '(22)',
                        price: '3,765,000',
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      ProductList(
                        imageUrl: 'assets/nike_yezzy.png',
                        nameProduct: 'Nike Yezzy T-20',
                        rating: 'assets/star_aktif.png',
                        ratings: 'assets/star.png',
                        amount: '(132)',
                        price: 'Rp 1,237,000',
                      ),
                      SizedBox(width: 16),
                      ProductList(
                        imageUrl: 'assets/nike_biru.png',
                        nameProduct: 'Nike P-Y671 Exc...',
                        rating: 'assets/star_aktif.png',
                        ratings: 'assets/star.png',
                        amount: '(56)',
                        price: 'Rp 4,225,000',
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      ProductList(
                        imageUrl: 'assets/nike_oren.png',
                        nameProduct: 'Nike Kenzy Nic..',
                        rating: 'assets/star_aktif.png',
                        ratings: 'assets/star.png',
                        amount: '(785)',
                        price: 'Rp 687,000',
                      ),
                      SizedBox(width: 16),
                      ProductList(
                        imageUrl: 'assets/newbalance_pink.png',
                        nameProduct: 'Nke Air Force X',
                        rating: 'assets/star_aktif.png',
                        ratings: 'assets/star.png',
                        amount: '(16)',
                        price: 'Rp 1,650,000',
                      ),
                    ],
                  ),
                  SizedBox(height: 32),
                  Text(
                    "You've reached the end",
                    style: GoogleFonts.montserrat(
                      color: Color(0xfff8f7ffd),
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
