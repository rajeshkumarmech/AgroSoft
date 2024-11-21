
import 'package:agrosoft/home/pages/cash&banking/statements/statements_view.dart';
import 'package:flutter/material.dart';
import '../../../Reusable/ButtonReusable.dart';
import 'balance/cheque_sample.dart';
import 'cheque_issue/cheque_view.dart';
import 'cheque_received/cheque_received_view.dart';
import 'fund_transfer/fundtransfer_view.dart';

class Cashbanking extends StatelessWidget {
  const Cashbanking ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Cash & Banking Details List Show",
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
            Buttontext: 'Fund Transfer',
            onTapButtton: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FundtransferView()));
            },
          ),
          const SizedBox(
            height: 15,
          ),
          Mybutton(
            iconData: Icons.payments_rounded,
            Buttontext: 'Cheque Issue',
            onTapButtton: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ChequeView()));
            },
          ),
          const SizedBox(
            height: 15,
          ),
          Mybutton(
            iconData: Icons.credit_card_rounded,
            Buttontext: 'Cheques Received',
            onTapButtton: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ChequeReceivedView()));
            },
          ),
          const SizedBox(
            height: 15,
          ),
          Mybutton(
            iconData: Icons.credit_score_rounded,
            Buttontext: 'Balance',
            onTapButtton: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BalanceSample()));
            },
          ),
          const SizedBox(
            height: 15,
          ),
          Mybutton(
            iconData: Icons.question_mark_rounded,
            Buttontext: 'Statements',
            onTapButtton: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const StatementsView()));
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
