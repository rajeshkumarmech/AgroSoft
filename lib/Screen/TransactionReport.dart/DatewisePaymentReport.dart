
import 'package:flutter/material.dart';

import '../../Reusable/ButtonReusable.dart';
import '../../Reusable/DateSwitchtype.dart';
import '../../Reusable/Dropdownbutton.dart';

class DatewisePaymentReports extends StatefulWidget {
  const DatewisePaymentReports({super.key});

  @override
  State<DatewisePaymentReports> createState() => _DatewisePaymentReportsState();
}

class _DatewisePaymentReportsState extends State<DatewisePaymentReports> {
  TextEditingController DRPaymentRangecontroller = TextEditingController();
  TextEditingController DRPaymentDesignationcontroller =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Datewise Receipt Reports',
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
            DateRangePicker(Controller: DRPaymentRangecontroller),
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
              controller: DRPaymentDesignationcontroller,
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
