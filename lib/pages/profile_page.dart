import 'package:ecommerce_app/pages/home_page.dart';
import 'package:ecommerce_app/pages/notification_page.dart';
import 'package:ecommerce_app/pages/product_page.dart';
import 'package:ecommerce_app/widgets/profile_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff030e22),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 60,
          ),
          child: Column(
            children: [
              Center(
                child: Text(
                  'Profile',
                  style: GoogleFonts.montserrat(
                      color: Color(0xfff8f7fd),
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
              SizedBox(
                height: 33,
              ),
              Image.asset('assets/photo_profile.png'),
              SizedBox(
                height: 14,
              ),
              Text(
                'Jhon Doe',
                style: GoogleFonts.montserrat(
                  color: Color(0xfff8f7fd),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 24, bottom: 16, left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Order History',
                      style: GoogleFonts.montserrat(
                        color: Color(0xfff8f7fd),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'See All',
                      style: GoogleFonts.montserrat(
                        color: Color(0xff68687a),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProfileTile(
                        imageUrl: 'assets/pending.png', title: 'Pending'),
                    ProfileTile(imageUrl: 'assets/packed.png', title: 'Packed'),
                    ProfileTile(
                        imageUrl: 'assets/ontheway.png', title: 'On The Way'),
                    ProfileTile(
                        imageUrl: 'assets/arrived.png', title: 'Arrived'),
                  ],
                ),
              ),
              SizedBox(
                height: 43,
              ),
              Column(
                children: [
                  Container(
                    height: 68,
                    width: 374.6,
                    padding: const EdgeInsets.only(
                      top: 24,
                      bottom: 24,
                      left: 20,
                      right: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Edit profile',
                          style: GoogleFonts.montserrat(
                              color: Color(0xfff8f7fd),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Image.asset('assets/arrow_navigation.png')
                      ],
                    ),
                  ),
                  Divider(
                    color: Color(0xff707070),
                    thickness: 1,
                  ),
                  Container(
                    height: 68,
                    width: 374.6,
                    padding: const EdgeInsets.only(
                      top: 24,
                      bottom: 24,
                      left: 20,
                      right: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'My Address',
                          style: GoogleFonts.montserrat(
                              color: Color(0xfff8f7fd),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Image.asset('assets/arrow_navigation.png')
                      ],
                    ),
                  ),
                  Divider(
                    color: Color(0xff707070),
                    thickness: 1,
                  ),
                ],
              ),
              SizedBox(
                height: 28,
              ),
              Container(
                width: 295,
                height: 47,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xff6c53cf),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Logout',
                    style: GoogleFonts.montserrat(
                        color: Color(0xfff8f7fd),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
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
        currentIndex: 3,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 8),
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
            icon: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 8),
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
              padding: const EdgeInsets.only(top: 16, bottom: 8),
              child: Image.asset(
                'assets/profile_aktif.png',
                width: 16,
              ),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
