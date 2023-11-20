import 'package:ecommerce_app/pages/home_page.dart';

import 'package:flutter/material.dart';

void main() => runApp(EcommerceApp());

class EcommerceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
