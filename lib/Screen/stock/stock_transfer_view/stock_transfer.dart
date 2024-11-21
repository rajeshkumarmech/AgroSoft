import 'package:agrosoft/home/pages/sales/AgainstView/againstview.dart';
import 'package:agrosoft/home/pages/sales/DirectDelivery/direct_delivery_view.dart';
import 'package:agrosoft/home/pages/sales/Invoice/invoice_view.dart';
import 'package:agrosoft/home/pages/sales/ReturnInvoice/return_invoice_view.dart';
import 'package:agrosoft/home/pages/sales/SalesOrder/sales_order_view.dart';
import 'package:agrosoft/home/pages/sales/SalesQuotation/sales_quotation_view.dart';
import 'package:flutter/material.dart';

class StockTransfer extends StatelessWidget {
  const StockTransfer({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffAED9BA),
        title: const Text(
          'Stock Details List Show',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          listforsales(size, () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const InvoiceView()));
          }, 'Stock Transfer'),
          listforsales(size, () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const SalesOrderView()));
          }, 'Stock Conversion'),
          listforsales(size, () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const SalesQuotationView()));
          }, 'Conversion Formula'),
          listforsales(size, () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const DirectDeliveryView()));
          }, 'Auto Conversion'),
          listforsales(size, () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const ReturnInvoiceView()));
          }, 'To Multi Conversion'),
          listforsales(size, () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const AgainstView()));
          }, 'Inactive Batches'),
          listforsales(size, () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const AgainstView()));
          }, 'HSN Update'),
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





