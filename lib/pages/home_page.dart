import 'package:ecommerce_app/pages/cart_page.dart';
import 'package:ecommerce_app/pages/detail_page.dart';
import 'package:ecommerce_app/pages/notification_page.dart';
import 'package:ecommerce_app/pages/product_page.dart';
import 'package:ecommerce_app/pages/profile_page.dart';
import 'package:ecommerce_app/pages/search_page.dart';
import 'package:ecommerce_app/widgets/categories_tile.dart';
import 'package:ecommerce_app/widgets/product_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff030e22),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60, right: 15, left: 15),
              child: Row(
                children: [
                  Flexible(
                    child: Container(
                      width: 295,
                      height: 40,
                      child: TextFormField(
                        cursorColor: Colors.white,
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
                          hintText: "I'm searching for..",
                          hintStyle: GoogleFonts.montserrat(
                            color: Color(0xff68687a),
                          ),
                          prefixIcon: InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (context, Animation1, Animation2) =>
                                          SearchPage(),
                                  transitionDuration: Duration(seconds: 0),
                                ),
                              );
                            },
                            child: Icon(
                              Icons.search,
                              color: Color(0xff686867a),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
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
                        borderRadius: BorderRadius.circular(13),
                        color: Color(0xff2c3545),
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(top: 24, left: 16),
                child: Row(
                  children: [
                    Container(
                      width: 279,
                      height: 148,
                      decoration: BoxDecoration(
                        color: Color(0xff6c5ecf),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 26, left: 24),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'New Arrival \nItem up to 30%',
                                  style: GoogleFonts.montserrat(
                                      color: Color(0xfff8f7fd),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w800),
                                ),
                                SizedBox(height: 16),
                                OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    side: BorderSide(
                                      color: Color(0xfff8f7fd),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Grab It Now',
                                    style: GoogleFonts.montserrat(
                                        color: Color(0xfff8f7fd),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 16.0, right: 24.8),
                              child: Image.asset(
                                'assets/smart_watch_3.png',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Container(
                      width: 279,
                      height: 148,
                      decoration: BoxDecoration(
                        color: Color(0xff21AE7B),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 26, left: 24),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Flash Deal \n12.12 Grab Now',
                                  style: GoogleFonts.montserrat(
                                      color: Color(0xfff8f7fd),
                                      fontWeight: FontWeight.w800,
                                      fontSize: 18),
                                ),
                                SizedBox(height: 16),
                                OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    side: BorderSide(
                                      color: Color(0xfff7f8fd),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Grab It Now',
                                    style: GoogleFonts.montserrat(
                                        color: Color(0xfff8f7fd),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 16.0, left: 24.8),
                              child: Image.asset('assets/picture.png'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 32.0,
                left: 16,
                right: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Categories',
                    style: GoogleFonts.montserrat(
                        color: Color(0xffF7F8FD),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See all',
                    style: GoogleFonts.montserrat(
                        color: Color(0xffCFCFCF),
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoriesTile(
                    imageUrl: 'assets/stationary.png',
                    text: 'Stationary',
                  ),
                  CategoriesTile(
                    imageUrl: 'assets/electronic.png',
                    text: 'Electronic',
                  ),
                  CategoriesTile(
                    imageUrl: 'assets/houseware.png',
                    text: 'Houseware',
                  ),
                  CategoriesTile(
                    imageUrl: 'assets/collection.png',
                    text: 'Collection',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 32,
                left: 16,
                right: 16,
              ),
              child: Row(
                children: [
                  Text(
                    'Something Like You',
                    style: GoogleFonts.montserrat(
                        color: Color(0xfff8f7fd),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 32,
                left: 16,
                right: 16,
                bottom: 60,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, Animation1, Animation2) =>
                                  DetailPage(),
                              transitionDuration: Duration(seconds: 0),
                            ),
                          );
                        },
                        child: ProductList(
                            imageUrl: 'assets/newbalance_pink.png',
                            nameProduct: 'Nike Air Force X',
                            rating: 'assets/star_aktif.png',
                            ratings: 'assets/star.png',
                            amount: '(16)',
                            price: 'Rp 1,650,000'),
                      ),
                      ProductList(
                          imageUrl: 'assets/smart_watch.png',
                          nameProduct: 'Smart Watch 2.0',
                          rating: 'assets/star_aktif.png',
                          ratings: 'assets/star.png',
                          amount: '(20)',
                          price: 'Rp 4,020,000'),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProductList(
                          imageUrl: 'assets/lampu_philips.png',
                          nameProduct: 'Philips LED Wi-Fi...',
                          rating: 'assets/star_aktif.png',
                          ratings: 'assets/star.png',
                          amount: '(11)',
                          price: 'Rp 50,000'),
                      ProductList(
                          imageUrl: 'assets/garnier.png',
                          nameProduct: 'Garnier Pure Act...',
                          rating: 'assets/star_aktif.png',
                          ratings: 'assets/star.png',
                          amount: '(39)',
                          price: 'Rp 45,000'),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProductList(
                          imageUrl: 'assets/headphone.png',
                          nameProduct: 'Rexus Headphone...',
                          rating: 'assets/star_aktif.png',
                          ratings: 'assets/star.png',
                          amount: '(50)',
                          price: 'Rp 743.000'),
                      ProductList(
                          imageUrl: 'assets/airpods.png',
                          nameProduct: 'Airpods',
                          rating: 'assets/star_aktif.png',
                          ratings: 'assets/star.png',
                          amount: '(20)',
                          price: 'Rp 2,220,000'),
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
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: GoogleFonts.montserrat(
          color: Color(0xfff8f7fd),
          fontSize: 10,
        ),
        selectedItemColor: Color(0xffffffff),
        unselectedLabelStyle: GoogleFonts.montserrat(
          color: Color(0xffcfcfcf),
          fontSize: 10,
        ),
        unselectedItemColor: Color(0xffcfcfcf),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff030e22),
        currentIndex: 0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 8),
              child: Image.asset(
                'assets/home_aktif.png',
                width: 16,
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 8),
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, Animation2) =>
                          ProductPage(),
                      transitionDuration: Duration(seconds: 0),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/product.png',
                  width: 16,
                ),
              ),
            ),
            label: 'Product',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, Animation1, Animation2) =>
                        NotificationPage(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 8),
                child: Image.asset(
                  'assets/notification.png',
                  width: 16,
                ),
              ),
            ),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 8),
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, Animation1, Animation2) =>
                          ProfilePage(),
                      transitionDuration: Duration(seconds: 0),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/profile.png',
                  width: 16,
                ),
              ),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
