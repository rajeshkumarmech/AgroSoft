
import 'package:agrosoft/home/pages/cash&banking/statements/statements_view.dart';
import 'package:flutter/material.dart';
import '../../../Reusable/ButtonReusable.dart';
import 'opening-balance/opening_balance_view.dart';
import 'opening_balance_bulk/opening_balancebulk_view.dart';
import 'opening_stock/opening_stock_view.dart';
import 'opening_stock_bulk/opening_stockbulk_view.dart';

class OpeningTransactionPg extends StatelessWidget {
  const OpeningTransactionPg ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Opening & Transction Details List Show",
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
            Buttontext: 'Opening Stock',
            onTapButtton: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const OpeningStockView()));
            },
          ),
          const SizedBox(
            height: 15,
          ),
          Mybutton(
            iconData: Icons.payments_rounded,
            Buttontext: 'Opening Stock Bulk',
            onTapButtton: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const OpeningStockbulkView()));
            },
          ),
          const SizedBox(
            height: 15,
          ),
          Mybutton(
            iconData: Icons.credit_card_rounded,
            Buttontext: 'Opening Balance',
            onTapButtton: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const OpeningBalance()));
            },
          ),
          const SizedBox(
            height: 15,
          ),
          Mybutton(
            iconData: Icons.credit_score_rounded,
            Buttontext: 'Opening Balance Bulk',
            onTapButtton: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const OpeningBalancebulkView()));
            },
          ),
          const SizedBox(
            height: 15,
          ),
          Mybutton(
            iconData: Icons.question_mark_rounded,
            Buttontext: 'Journal Entry',
            onTapButtton: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => const StatementsView()));
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
