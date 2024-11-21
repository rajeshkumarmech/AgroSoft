import 'package:flutter/material.dart';

import 'Purchaseprice/view_purchase_price.dart';
import 'SalesPrice/view_sales_price.dart';

class PriceList extends StatelessWidget {
  const PriceList({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffAED9BA),
        title: const Text(
          'Price List',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          listforsales(size, () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const ViewSalesPrice()));
          }, 'Sales Price'),
          listforsales(size, () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const ViewPurchasePrice()));
          }, 'Purchase Price'),
        ],
      ),
    );
  }

  GestureDetector listforsales(Size size, VoidCallback function, String name) {
    return GestureDetector(
      onTap: function,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Container(
          height: 80,
          width: size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.shade300),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontFamily: 'Jost',
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  height: 43 / 30,
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios,
                size: 22,
              )
            ],
          ),
        ),
      ),
    );
  }
}