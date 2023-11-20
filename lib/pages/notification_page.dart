// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable

import 'package:ecommerce_app/pages/home_page.dart';
import 'package:ecommerce_app/pages/product_page.dart';
import 'package:ecommerce_app/pages/profile_page.dart';
import 'package:ecommerce_app/widgets/notification_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationPage extends StatelessWidget {
  var been;

  NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff030e22),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 60,
        ),
        child: Column(
          children: [
            Center(
              child: Text(
                'Notification',
                style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 32),
            NotificationTile(
              title: 'Order #20181111123 has arrived!',
              text:
                  "What you've been waiting for has arrived! Don't forget to confirm on the history page.",
              imageUrl: 'assets/timer.png',
              time: '09-04-2021 17:51',
            ),
            NotificationTile(
              title: 'Order #20181111122 has been cancelled',
              text:
                  "Your order has been canceled by the system. Chat to the shop owner for more information",
              imageUrl: 'assets/timer.png',
              time: '09-04-2021 17:51',
            ),
            NotificationTile(
              title: 'Order #20181111121 is being processed',
              text:
                  "hurray.. the seller is preparing your order wait a little longer, okay?",
              imageUrl: 'assets/timer.png',
              time: '09-04-2021 17:51',
            ),
            NotificationTile(
              title: 'Order #20181111120 waiting for your payment',
              text:
                  "let's complete the payment or your order will be automatically canceled by the system in 3 days",
              imageUrl: 'assets/timer.png',
              time: '09-04-2021 17:51',
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
        currentIndex: 2,
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
              child: Image.asset(
                'assets/notification_aktif.png',
                width: 16,
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
                        transitionDuration: Duration(seconds: 0)),
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
