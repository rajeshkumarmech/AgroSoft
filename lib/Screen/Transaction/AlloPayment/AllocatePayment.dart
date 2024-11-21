import 'package:flutter/material.dart';

import '../../../Reusable/ButtonReusable.dart';
import '../../../Reusable/DateOption.dart';
import '../../../Reusable/Inputtextfield.dart';

class AlloPaymentDetails extends StatefulWidget {
  const AlloPaymentDetails({super.key});

  @override
  State<AlloPaymentDetails> createState() => _AlloPaymentDetailsState();
}

class _AlloPaymentDetailsState extends State<AlloPaymentDetails> {
  TextEditingController AllowpaymentDatecontroller = TextEditingController();

  TextEditingController AllowpaymentNamecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'AllocatePayment Details',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
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
                    'Date',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  DateOption(datecontroller: AllowpaymentDatecontroller),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Name',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  InputTextField(
                    hint: 'Customer Name',
                    controller: AllowpaymentNamecontroller,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Balance',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const BalanceAmountHide(BalanceText: 'Balance'),
                  const SizedBox(
                    height: 10,
                  ),
                  SaveButton(
                    SaveButtontext: 'Save',
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
