import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

import '../../../Reusable/ButtonReusable.dart';
import '../../../Reusable/DateOption.dart';
import '../../../Reusable/Dropdownbutton.dart';
import '../../../Reusable/Inputtextfield.dart';

class CreditNote extends StatefulWidget {
  const CreditNote({super.key});

  @override
  State<CreditNote> createState() => _CreditNoteState();
}

class _CreditNoteState extends State<CreditNote> {
  TextEditingController CreditDatecontroller = TextEditingController();
  TextEditingController CreditAmountcontroller = TextEditingController();
  TextEditingController CreditReferencecontroller = TextEditingController();
  TextEditingController CreditNamecontroller = TextEditingController();
  final List<String> creditlist = [
    'Select Option',
    'Kumar',
    'Kavi',
    'Dinesh',
    'Vijay'
  ];
  String creditlisttext = 'Select Option';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Credit Note Details',
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
                  DateOption(datecontroller: CreditDatecontroller),
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
                  CustomDropdownButton(
                    dropDownItem: const [
                      'Mohan',
                      'Yuvraj',
                      'Selvam',
                      'Ravi',
                      'Select Option'
                    ],
                    selectedItem: 'Select Option',
                    controller: CreditNamecontroller,
                  ),
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
                    controller: CreditAmountcontroller,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Reference',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  InputTextField(
                    hint: 'Reference',
                    controller: CreditReferencecontroller,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SaveButton(
                    SaveButtontext: 'Save',
                    onSaveButtton: () {},
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
