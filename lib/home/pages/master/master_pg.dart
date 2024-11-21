
import 'package:agrosoft/home/pages/master/product/product_view.dart';
import 'package:agrosoft/home/pages/master/product_bulk/product_bulk_view.dart';
import 'package:flutter/material.dart';

import '../../../Reusable/ButtonReusable.dart';
import '../bottom_nav.dart';
import '../homepage.dart';
import 'batch_lots/batch_view.dart';
import 'ledger_pg/ledger_view.dart';

class master extends StatelessWidget {
  const master({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // leading: GestureDetector(
        //     child: Icon(Icons.arrow_back)),
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>MainPage()));
        },
            icon: Icon(Icons.arrow_back)),
        title: const Text(
          "Master Details List Show",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        // toolbarHeight: 40,
        // toolbarOpacity: 1,
        // shape: const RoundedRectangleBorder(
        //   borderRadius: BorderRadius.only(
        //       bottomRight: Radius.circular(25),
        //       bottomLeft: Radius.circular(25)),
        // ),
        // elevation: 0.00,
        backgroundColor: const Color(0xffAED9BA),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Mybutton(
            iconData: Icons.receipt_rounded,
            Buttontext: 'Ledger',
            onTapButtton: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LedgerView()));
            },
          ),
          const SizedBox(
            height: 15,
          ),
          Mybutton(
            iconData: Icons.payments_rounded,
            Buttontext: 'Product',
            onTapButtton: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ProductView()));
            },
          ),
          const SizedBox(
            height: 15,
          ),
          Mybutton(
            iconData: Icons.credit_card_rounded,
            Buttontext: 'Product Bulk',
            onTapButtton: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProductBulkView()));

            },
          ),
          const SizedBox(
            height: 15,
          ),
          Mybutton(
            iconData: Icons.credit_score_rounded,
            Buttontext: 'Batch & Lots',
            onTapButtton: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const batch_lots()));
            },
          ),

        ],
      ),
    );
  }
}
