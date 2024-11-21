import 'package:flutter/material.dart';

import '../../Reusable/ButtonReusable.dart';
import '../../Reusable/DateSwitchtype.dart';
import '../../Reusable/Dropdownbutton.dart';

class ReceiptReports extends StatefulWidget {
  const ReceiptReports({super.key});

  @override
  State<ReceiptReports> createState() => _ReceiptReportsState();
}

class _ReceiptReportsState extends State<ReceiptReports> {
  TextEditingController ReceiptRRRangecontroller = TextEditingController();
  TextEditingController ReceiptRRDesignationcontroller =
      TextEditingController();
  TextEditingController ReceiptTypeReportcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          ' Receipt Reports',
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
            DateRangePicker(Controller: ReceiptRRRangecontroller),
            const Text(
              'Receipt Type',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            CustomDropdownButton(
              dropDownItem: const [
                'Auto Cash Receipt',
                'Manual Credit Receipt',
                'Manual Credit Note',
                'Select Option'
              ],
              selectedItem: 'Select Option',
              controller: ReceiptTypeReportcontroller,
            ),
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
              controller: ReceiptRRDesignationcontroller,
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
