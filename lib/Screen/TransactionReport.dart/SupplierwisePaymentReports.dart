
import 'package:flutter/material.dart';import '../../Reusable/ButtonReusable.dart';
import '../../Reusable/DateSwitchtype.dart';
import '../../Reusable/Dropdownbutton.dart';

class SupplierwisePaymentReports extends StatefulWidget {
  const SupplierwisePaymentReports({super.key});

  @override
  State<SupplierwisePaymentReports> createState() =>
      _SupplierwisePaymentReportsState();
}

class _SupplierwisePaymentReportsState
    extends State<SupplierwisePaymentReports> {
  TextEditingController SupplierRRRangecontroller = TextEditingController();
  TextEditingController SupplierRRDesignationcontroller =
      TextEditingController();
  TextEditingController SupplierRRPayTypecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Supplier wise Payment Reports',
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
            DateRangePicker(Controller: SupplierRRRangecontroller),
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
              controller: SupplierRRDesignationcontroller,
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
              controller: SupplierRRPayTypecontroller,
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
