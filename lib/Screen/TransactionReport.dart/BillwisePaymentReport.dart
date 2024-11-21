
import 'package:flutter/material.dart';

import '../../Reusable/ButtonReusable.dart';
import '../../Reusable/DateSwitchtype.dart';
import '../../Reusable/Dropdownbutton.dart';

class BillwisePaymentReport extends StatefulWidget {
  const BillwisePaymentReport({super.key});

  @override
  State<BillwisePaymentReport> createState() => _BillwisePaymentReportState();
}

class _BillwisePaymentReportState extends State<BillwisePaymentReport> {
  TextEditingController BillwisePaymentRRangecontroller =
      TextEditingController();
  TextEditingController BillwisePaymentRDesignationcontroller =
      TextEditingController();
  TextEditingController BillwisePaymentRPayTypecontroller =
      TextEditingController();
  TextEditingController BillwisePaymentRPayAmountcontroller =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Bill Wise Payment Report',
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
            DateRangePicker(Controller: BillwisePaymentRRangecontroller),
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
              controller: BillwisePaymentRDesignationcontroller,
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
              controller: BillwisePaymentRPayTypecontroller,
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
              controller: BillwisePaymentRPayAmountcontroller,
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
