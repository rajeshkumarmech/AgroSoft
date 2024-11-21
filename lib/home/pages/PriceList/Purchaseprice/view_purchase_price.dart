import 'package:flutter/material.dart';
class ViewPurchasePrice extends StatefulWidget {
  const ViewPurchasePrice({super.key});

  @override
  State<ViewPurchasePrice> createState() => _ViewPurchasePriceState();
}

class _ViewPurchasePriceState extends State<ViewPurchasePrice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffAED9BA),
        title: const Text(
          'Purchase Price',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
      ),
      body: ListView(
        children: [],
      ),
    );
  }
}
