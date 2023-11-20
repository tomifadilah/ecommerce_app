import 'package:ecommerce_app/pages/home_page.dart';
import 'package:ecommerce_app/pages/notification_page.dart';
import 'package:ecommerce_app/pages/profile_page.dart';
import 'package:ecommerce_app/widgets/product_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductPage extends StatelessWidget {
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
                left: 16,
                right: 16,
              ),
              child: Row(
                children: [
                  Flexible(
                    child: Container(
                      width: 295,
                      height: 40,
                      child: TextFormField(
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
                            color: Color(0xff686867a),
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color(0xff686867a),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
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
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 24,
                left: 15,
                right: 15,
                bottom: 100,
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
                        price: 'Rp 1,650,000',
                      ),
                      SizedBox(width: 16),
                      ProductList(
                        imageUrl: 'assets/smart_watch.png',
                        nameProduct: 'Smart Watch 2.0',
                        rating: 'assets/star_aktif.png',
                        ratings: 'assets/star.png',
                        amount: '(20)',
                        price: 'Rp 4,020,000',
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      ProductList(
                        imageUrl: 'assets/lampu_philips.png',
                        nameProduct: 'Philips LED Wi-fi',
                        rating: 'assets/star_aktif.png',
                        ratings: 'assets/star.png',
                        amount: '(11)',
                        price: 'Rp 50,000',
                      ),
                      SizedBox(width: 16),
                      ProductList(
                        imageUrl: 'assets/garnier.png',
                        nameProduct: 'Garnier Pire Act...',
                        rating: 'assets/star_aktif.png',
                        ratings: 'assets/star.png',
                        amount: '(49)',
                        price: 'Rp 45,000',
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      ProductList(
                        imageUrl: 'assets/headphone.png',
                        nameProduct: 'Rexus Headphone...',
                        rating: 'assets/star_aktif.png',
                        ratings: 'assets/star.png',
                        amount: '(50)',
                        price: 'Rp 743,000',
                      ),
                      SizedBox(width: 16),
                      ProductList(
                        imageUrl: 'assets/airpods.png',
                        nameProduct: 'Nike Air Force X',
                        rating: 'assets/star_aktif.png',
                        ratings: 'assets/star.png',
                        amount: '(20)',
                        price: 'Rp 2,200,000',
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xfff8f7fd),
        selectedLabelStyle: GoogleFonts.montserrat(
          color: Color(0xfff8f7fd),
          fontSize: 10,
        ),
        unselectedItemColor: Color(0xffcfcfcf),
        unselectedLabelStyle: GoogleFonts.montserrat(
          color: Color(0xffcfcfcf),
          fontSize: 10,
        ),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff030e22),
        currentIndex: 1,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(
                top: 16,
                bottom: 8,
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, Animation1, animation2) =>
                          HomePage(),
                      transitionDuration: Duration(seconds: 0),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/home.png',
                  width: 16,
                ),
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(
                top: 16,
                bottom: 8,
              ),
              child: Image.asset(
                'assets/product_aktif.png',
                width: 16,
              ),
            ),
            label: 'Product',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(
                top: 16,
                bottom: 8,
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, Animation1, Animation2) =>
                          NotificationPage(),
                      transitionDuration: Duration(seconds: 0),
                    ),
                  );
                },
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
              padding: const EdgeInsets.only(
                top: 16,
                bottom: 8,
              ),
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
