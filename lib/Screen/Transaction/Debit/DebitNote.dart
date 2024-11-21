import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

import '../../../Reusable/ButtonReusable.dart';
import '../../../Reusable/DateOption.dart';
import '../../../Reusable/Dropdownbutton.dart';
import '../../../Reusable/Inputtextfield.dart';

class DebitNote extends StatefulWidget {
  const DebitNote({super.key});

  @override
  State<DebitNote> createState() => _DebitNoteState();
}

class _DebitNoteState extends State<DebitNote> {
  TextEditingController DebitDatecontroller = TextEditingController();
  TextEditingController DebitAmountcontroller = TextEditingController();
  TextEditingController DebitReferencecontroller = TextEditingController();
  TextEditingController DebitNamecontroller = TextEditingController();
  final List<String> namelist = [
    'Select Option',
    'Kumar',
    'Kavi',
    'Dinesh',
    'Vijay'
  ];
  String namelisttext = 'Select Option';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Debit Note Details',
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
                  DateOption(datecontroller: DebitDatecontroller),
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
                    controller: DebitNamecontroller,
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
                    controller: DebitAmountcontroller,
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
                    controller: DebitReferencecontroller,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SaveButton(
                    SaveButtontext: 'Save',
                    onSaveButtton: () {},
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _DebitBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Name',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            DropdownSearch<String>(
              items: namelist,
              dropdownDecoratorProps: const DropDownDecoratorProps(
                dropdownSearchDecoration: InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  suffixIconColor: Color(0xff278942),
                  suffixIcon: null,
                  labelStyle: TextStyle(
                    color: Color(0xff278942),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              onChanged: (String? newValue) {
                setState(() {
                  namelisttext = newValue!;
                });
              },
              selectedItem: namelisttext,
              dropdownBuilder: (context, selectedItem) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    selectedItem ?? '',
                    style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                );
              },
              popupProps: PopupProps.menu(
                showSearchBox: true,
                searchFieldProps: const TextFieldProps(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                itemBuilder: (context, item, isSelected) {
                  return Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      item,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            SaveButton(
              SaveButtontext: 'Filter List',
              onSaveButtton: () {
                Navigator.pop(context);
              },
            )
          ],
        );
      },
    );
  }
}
