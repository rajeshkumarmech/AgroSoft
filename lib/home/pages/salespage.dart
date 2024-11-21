
import 'package:agrosoft/home/pages/sales/DirectDelivery/direct_delivery_view.dart';
import 'package:agrosoft/home/pages/sales/Invoice/invoice_view.dart';
import 'package:agrosoft/home/pages/sales/ReturnInvoice/return_invoice_view.dart';
import 'package:agrosoft/home/pages/sales/SalesOrder/sales_order_view.dart';
import 'package:agrosoft/home/pages/sales/SalesQuotation/sales_quotation_view.dart';
import 'package:flutter/material.dart';
import '../../Reusable/ButtonReusable.dart';


class Salespage extends StatelessWidget {
  const Salespage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Sales Details List Show",
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
        children: [
          const SizedBox(
            height: 10,
          ),
          Mybutton(
            iconData: Icons.receipt_rounded,
            Buttontext: 'JCB & Track Bill',
            onTapButtton: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const InvoiceView()));
            },
          ),
          const SizedBox(
            height: 15,
          ),
          Mybutton(
            iconData: Icons.payments_rounded,
            Buttontext: 'Sales Invoice New',
            onTapButtton: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const InvoiceView()));
            },
          ),
          const SizedBox(
            height: 15,
          ),
          Mybutton(
            iconData: Icons.credit_card_rounded,
            Buttontext: 'Direct Invoice',
            onTapButtton: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const InvoiceView()));
            },
          ),
          const SizedBox(
            height: 15,
          ),
          Mybutton(
            iconData: Icons.credit_score_rounded,
            Buttontext: 'Sales Order',
            onTapButtton: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SalesOrderView()));
            },
          ),
          const SizedBox(
            height: 15,
          ),
          Mybutton(
            iconData: Icons.question_mark_rounded,
            Buttontext: 'Sales Quatation',
            onTapButtton: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SalesQuotationView()));
            },
          ),
          const SizedBox(
            height: 15,
          ),
          Mybutton(
            iconData: Icons.monitor_weight_rounded,
            Buttontext: 'Direct Delivery',
            onTapButtton: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DirectDeliveryView()));
            },
          ),
          const SizedBox(
            height: 15,
          ),
          Mybutton(
            iconData: Icons.monitor_weight_rounded,
            Buttontext: 'Return Invoice',
            onTapButtton: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ReturnInvoiceView()));
            },
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
