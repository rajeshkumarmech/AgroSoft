import 'package:flutter/material.dart';

import '../../Reusable/ButtonReusable.dart';
import '../../Reusable/DateSwitchtype.dart';
import '../../Reusable/Dropdownbutton.dart';

class CustomerwiseReceiptReports extends StatefulWidget {
  const CustomerwiseReceiptReports({super.key});

  @override
  State<CustomerwiseReceiptReports> createState() =>
      _CustomerwiseReceiptReportsState();
}

class _CustomerwiseReceiptReportsState
    extends State<CustomerwiseReceiptReports> {
  TextEditingController CustomerRRRangecontroller = TextEditingController();
  TextEditingController CustomerRRDesignationcontroller =
      TextEditingController();
  TextEditingController CustomerRRPayTypecontroller = TextEditingController();
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
            DateRangePicker(Controller: CustomerRRRangecontroller),
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
              controller: CustomerRRDesignationcontroller,
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
              controller: CustomerRRPayTypecontroller,
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
