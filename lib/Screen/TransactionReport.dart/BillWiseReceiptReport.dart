 import 'package:flutter/material.dart';

import '../../Reusable/ButtonReusable.dart';
import '../../Reusable/DateSwitchtype.dart';
import '../../Reusable/Dropdownbutton.dart';

class BillwiseReceiptReports extends StatefulWidget {
  const BillwiseReceiptReports({super.key});

  @override
  State<BillwiseReceiptReports> createState() => _BillwiseReceiptReportsState();
}

class _BillwiseReceiptReportsState extends State<BillwiseReceiptReports> {
  TextEditingController BillwiseRRRangecontroller = TextEditingController();
  TextEditingController BillwiseRRDesignationcontroller =
      TextEditingController();
  TextEditingController BillwiseRRPayTypecontroller = TextEditingController();
  TextEditingController BillwiseRRPayAmountcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Customer wise Receipt Reports',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xffAED9BA),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Date',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            DateRangePicker(Controller: BillwiseRRRangecontroller),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Destination',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            CustomDropdownButton(
              dropDownItem: const [
                'PDF',
                'EXCEL',
                'Select Option',
              ],
              selectedItem: 'Select Option',
              controller: BillwiseRRDesignationcontroller,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Pay Type',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            CustomDropdownButton(
              dropDownItem: const [
                'CASH',
                'CHEQUE',
                'NEFT',
                'IMPS',
                'UPI (GPAY PHONE PAY)',
                'Select Option'
              ],
              selectedItem: 'Select Option',
              controller: BillwiseRRPayTypecontroller,
            ),
            const Text(
              'Pay Amount',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            CustomDropdownButton(
              dropDownItem: const [
                'PETTY CASH',
                'SBI BANK',
                'CUB BANK',
                'KVB BANK',
                'INDIAN BANK',
                'IOB BANK',
                'Select Option'
              ],
              selectedItem: 'Select Option',
              controller: BillwiseRRPayAmountcontroller,
            ),
            const SizedBox(
              height: 30,
            ),
            SaveButton(
              SaveButtontext: 'Display',
              onSaveButtton: () {},
            )
          ],
        ),
      ),
    );
  }
}
