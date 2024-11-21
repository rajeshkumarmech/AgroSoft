import 'package:flutter/material.dart';
import '../../Reusable/ButtonReusable.dart';
import 'BillWiseReceiptReport.dart';
import 'BillwisePaymentReport.dart';
import 'CreditNoteReport.dart';
import 'CustomerwiseReceiptReports.dart';
import 'DatewisePaymentReport.dart';
import 'DatewiseReceiptReports.dart';
import 'DebitNoteReport.dart';
import 'ReceiptReport.dart';
import 'SupplierwisePaymentReports.dart';

class ReportTypes extends StatelessWidget {
  const ReportTypes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Types of Reports',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xffAED9BA),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Mybutton(
              iconData: Icons.report_outlined,
              Buttontext: 'Datewise Receipt Reports',
              onTapButtton: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DatewiseReceiptReports()));
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Mybutton(
              iconData: Icons.report_outlined,
              Buttontext: 'Customer wise Receipt Reports',
              onTapButtton: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const CustomerwiseReceiptReports()));
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Mybutton(
              iconData: Icons.report_outlined,
              Buttontext: 'Bill Wise Receipt Report',
              onTapButtton: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BillwiseReceiptReports()));
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Mybutton(
              iconData: Icons.report_outlined,
              Buttontext: 'Datewise Payment Reports',
              onTapButtton: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DatewisePaymentReports()));
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Mybutton(
              iconData: Icons.report_outlined,
              Buttontext: 'Supplier wise Payment Reports',
              onTapButtton: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const SupplierwisePaymentReports()));
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Mybutton(
              iconData: Icons.report_outlined,
              Buttontext: 'Billwise Payment Reports',
              onTapButtton: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BillwisePaymentReport()));
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Mybutton(
              iconData: Icons.report_outlined,
              Buttontext: 'Credit Notes Report',
              onTapButtton: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CreditNoteReports()));
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Mybutton(
              iconData: Icons.report_outlined,
              Buttontext: 'Debit Notes Report',
              onTapButtton: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DebitNoteReports()));
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Mybutton(
              iconData: Icons.report_outlined,
              Buttontext: 'Receipt Report',
              onTapButtton: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ReceiptReports()));
              },
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
