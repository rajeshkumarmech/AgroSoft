
import 'package:flutter/material.dart';

import '../../../Reusable/ButtonReusable.dart';
import '../../../Reusable/Dropdownbutton.dart';

class RealloPaymentDetails extends StatefulWidget {
  const RealloPaymentDetails({super.key});

  @override
  State<RealloPaymentDetails> createState() => _RealloPaymentDetailsState();
}

class _RealloPaymentDetailsState extends State<RealloPaymentDetails> {
  TextEditingController ReallocateLedgercontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'ReallocatePayment Details',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Ledger',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  CustomDropdownButton(
                    dropDownItem: const ['Ledger Name', 'Select Option'],
                    selectedItem: 'Select Option',
                    controller: ReallocateLedgercontroller,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SaveButton(
                    SaveButtontext: 'REALLOCATE RECEIPT',
                    onSaveButtton: () {},
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
