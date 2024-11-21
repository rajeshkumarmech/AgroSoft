import 'package:flutter/material.dart';

class ViewSalesPrice extends StatefulWidget {
  const ViewSalesPrice({super.key});

  @override
  State<ViewSalesPrice> createState() => _ViewSalesPriceState();
}

class _ViewSalesPriceState extends State<ViewSalesPrice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffAED9BA),
        title: const Text(
          'Sales Price',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
      ),
    );
  }
}
