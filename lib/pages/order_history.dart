import 'package:ecommerce_app/pages/cancel_order.dart';
import 'package:ecommerce_app/pages/gray_cancel.dart';
import 'package:ecommerce_app/pages/order_details.dart';
import 'package:ecommerce_app/pages/rate_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Color(0xff030e22),
        appBar: AppBar(
          toolbarHeight: 180,
          backgroundColor: Color(0xff030e22),
          flexibleSpace: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60.0, left: 16),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, Animation1, Animation2) =>
                                OrderDetails(),
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
                        child: Image.asset('assets/arrow_back.png'),
                      ),
                    ),
                    SizedBox(
                      width: 76,
                    ),
                    Text(
                      'Order History',
                      style: GoogleFonts.montserrat(
                        color: Color(0xfff8f7fd),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TabBar(
                isScrollable: true,
                indicatorColor: Colors.white,
                tabs: [
                  Tab(
                    child: Text(
                      'Pending',
                      style: GoogleFonts.montserrat(
                          color: Color(0xfff8f7fd),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Packed',
                      style: GoogleFonts.montserrat(
                          color: Color(0xfff8f7fd),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'On The Way',
                      style: GoogleFonts.montserrat(
                          color: Color(0xfff8f7fd),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Arrived',
                      style: GoogleFonts.montserrat(
                          color: Color(0xfff8f7fd),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Scaffold(
              backgroundColor: Color(0xff030e22),
              body: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, Animation1, Animation2) =>
                          CancelPage(),
                      transitionDuration: Duration(seconds: 0),
                    ),
                  );
                },
                child: Column(
                  children: [
                    SizedBox(
                      height: 24,
                    ),
                    Center(
                      child: Container(
                        width: 344,
                        height: 176,
                        decoration: BoxDecoration(
                          color: Color(0xff2c3545),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/newbalance_pink.png',
                                  width: 115,
                                  height: 115,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Nike Air Force X-AC \nGirl Style',
                                      style: GoogleFonts.montserrat(
                                        color: Color(0xfff8f7fd),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Text(
                                      'Rp 1.650.000',
                                      style: GoogleFonts.montserrat(
                                          color: Color(0xfff8f7fd),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Divider(
                              color: Color(0xffcfcfcf),
                              thickness: 1,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 12, right: 12, top: 12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '2 Product',
                                    style: GoogleFonts.montserrat(
                                        color: Color(0xfff8f7fd),
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    'Rp 6,150,000',
                                    style: GoogleFonts.montserrat(
                                        color: Color(0xfff8f7fd),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Scaffold(
              backgroundColor: Color(0xff030e22),
              body: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, Animation1, Animation2) =>
                          GrayCancel(),
                      transitionDuration: Duration(seconds: 0),
                    ),
                  );
                },
                child: Column(
                  children: [
                    SizedBox(
                      height: 24,
                    ),
                    Center(
                      child: Container(
                        width: 344,
                        height: 176,
                        decoration: BoxDecoration(
                          color: Color(0xff2c3545),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/newbalance_pink.png',
                                  width: 115,
                                  height: 115,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Nike Air Force X-AC \nGirl Style',
                                      style: GoogleFonts.montserrat(
                                        color: Color(0xfff8f7fd),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Text(
                                      'Rp 1.650.000',
                                      style: GoogleFonts.montserrat(
                                          color: Color(0xfff8f7fd),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Divider(
                              color: Color(0xffcfcfcf),
                              thickness: 1,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 12, right: 12, top: 12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '2 Product',
                                    style: GoogleFonts.montserrat(
                                        color: Color(0xfff8f7fd),
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    'Rp 6,150,000',
                                    style: GoogleFonts.montserrat(
                                        color: Color(0xfff8f7fd),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Scaffold(
              backgroundColor: Color(0xff030e22),
              body: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, Animation1, Animation2) =>
                          GrayCancel(),
                      transitionDuration: Duration(seconds: 0),
                    ),
                  );
                },
                child: Column(
                  children: [
                    SizedBox(
                      height: 24,
                    ),
                    Center(
                      child: Container(
                        width: 344,
                        height: 176,
                        decoration: BoxDecoration(
                          color: Color(0xff2c3545),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/newbalance_pink.png',
                                  width: 115,
                                  height: 115,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Nike Air Force X-AC \nGirl Style',
                                      style: GoogleFonts.montserrat(
                                        color: Color(0xfff8f7fd),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Text(
                                      'Rp 1.650.000',
                                      style: GoogleFonts.montserrat(
                                          color: Color(0xfff8f7fd),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Divider(
                              color: Color(0xffcfcfcf),
                              thickness: 1,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 12, right: 12, top: 12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '2 Product',
                                    style: GoogleFonts.montserrat(
                                        color: Color(0xfff8f7fd),
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    'Rp 6,150,000',
                                    style: GoogleFonts.montserrat(
                                        color: Color(0xfff8f7fd),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Scaffold(
              backgroundColor: Color(0xff030e22),
              body: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (context, Animation1, Animation2) =>
                            RateOrder(),
                        transitionDuration: Duration(seconds: 0)),
                  );
                },
                child: Column(
                  children: [
                    SizedBox(
                      height: 24,
                    ),
                    Center(
                      child: Container(
                        width: 344,
                        height: 176,
                        decoration: BoxDecoration(
                          color: Color(0xff2c3545),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/newbalance_pink.png',
                                  width: 115,
                                  height: 115,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Nike Air Force X-AC \nGirl Style',
                                      style: GoogleFonts.montserrat(
                                        color: Color(0xfff8f7fd),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Text(
                                      'Rp 1.650.000',
                                      style: GoogleFonts.montserrat(
                                          color: Color(0xfff8f7fd),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Divider(
                              color: Color(0xffcfcfcf),
                              thickness: 1,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 12, right: 12, top: 12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '2 Product',
                                    style: GoogleFonts.montserrat(
                                        color: Color(0xfff8f7fd),
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    'Rp 6,150,000',
                                    style: GoogleFonts.montserrat(
                                        color: Color(0xfff8f7fd),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
