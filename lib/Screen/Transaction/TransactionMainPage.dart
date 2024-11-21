
import 'package:flutter/material.dart';
import '../../Reusable/ButtonReusable.dart';
import 'AlloPayment/AllocatePayment.dart';
import 'Credit/CreditViewlist.dart';
import 'Debit/DebitViewlist.dart';
import 'OthersTranscation/Others.dart';
import 'Payment/payment_view.dart';
import 'RealloPayment/ReallocatePayment.dart';
import 'Receipt/receipt_view.dart';

class TransactionDetails extends StatelessWidget {
  const TransactionDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Transaction Details List Show",
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
            Buttontext: 'Receipt',
            onTapButtton: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ReceiptView()));
            },
          ),
          const SizedBox(
            height: 15,
          ),
          Mybutton(
            iconData: Icons.payments_rounded,
            Buttontext: 'Payment',
            onTapButtton: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const PaymentView()));
            },
          ),
          const SizedBox(
            height: 15,
          ),
          Mybutton(
            iconData: Icons.credit_card_rounded,
            Buttontext: 'Credit Note',
            onTapButtton: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CreditViewlist()));
            },
          ),
          const SizedBox(
            height: 15,
          ),
          Mybutton(
            iconData: Icons.credit_score_rounded,
            Buttontext: 'Debit Note',
            onTapButtton: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DebitViewlist()));
            },
          ),
          const SizedBox(
            height: 15,
          ),
          Mybutton(
            iconData: Icons.question_mark_rounded,
            Buttontext: 'Others',
            onTapButtton: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const OthersDetails()));
            },
          ),
          const SizedBox(
            height: 15,
          ),
          Mybutton(
            iconData: Icons.monitor_weight_rounded,
            Buttontext: 'Allocate Payment',
            onTapButtton: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AlloPaymentDetails()));
            },
          ),
          const SizedBox(
            height: 15,
          ),
          Mybutton(
            iconData: Icons.monitor_weight_rounded,
            Buttontext: 'Reallocate Payment',
            onTapButtton: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RealloPaymentDetails()));
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
