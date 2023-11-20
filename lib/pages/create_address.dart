import 'package:ecommerce_app/widgets/address_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff030e22),
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
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
                  child: Image.asset('assets/arrow_back.png'),
                ),
                SizedBox(
                  width: 76,
                ),
                Text(
                  'Edit Address',
                  style: GoogleFonts.montserrat(
                      color: Color(0xfff8f7fd),
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                )
              ],
            ),
            Column(
              children: [
                AddressTile(
                  title: 'Address 1',
                  name: 'Jhone Doe',
                  phone: '+62 244 235 953',
                  address:
                      'Toko Mas - Jl. Nangka Sari No. 24D, Kecamatan Ngoy Kota Surabaya',
                ),
                AddressTile(
                  title: 'Address 2',
                  name: 'Bambang Sole',
                  phone: '+62 244 235 953',
                  address:
                      'Toko Mas - Jl. Nangka Sari No. 24D, Kecamatan Ngoy Kota Surabaya',
                ),
                AddressTile(
                  title: 'Address 3',
                  name: 'David Beck',
                  phone: '+62 244 235 953',
                  address:
                      'Toko Mas - Jl. Nangka Sari No. 24D, Kecamatan Ngoy Kota Surabaya',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
