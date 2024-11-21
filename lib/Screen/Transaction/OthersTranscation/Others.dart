import 'package:flutter/material.dart';

import '../../../Reusable/ButtonReusable.dart';
import '../../../Reusable/DateOption.dart';
import '../../../Reusable/Inputtextfield.dart';

class OthersDetails extends StatefulWidget {
  const OthersDetails({super.key});

  @override
  State<OthersDetails> createState() => _OthersDetailsState();
}

class _OthersDetailsState extends State<OthersDetails> {
  TextEditingController OtherDatecontroller = TextEditingController();
  TextEditingController OtherAmountcontroller = TextEditingController();
  TextEditingController OtherNamecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe0e1dd),
      appBar: AppBar(
        title: const Text(
          'Other Details',
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
                    'Date',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  DateOption(datecontroller: OtherDatecontroller),
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
                    controller: OtherNamecontroller,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Point Value',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const BalanceAmountHide(BalanceText: 'Point Value'),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Customer Balance',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const BalanceAmountHide(BalanceText: 'Customer Balance'),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Amounnt',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  InputTextField(
                    hint: 'Amounnt',
                    controller: OtherAmountcontroller,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
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
