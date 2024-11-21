import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

import '../../../Reusable/ButtonReusable.dart';
import '../../../Reusable/FilterButton.dart';
import 'CreditNote.dart';

class CreditViewlist extends StatefulWidget {
  const CreditViewlist({super.key});

  @override
  State<CreditViewlist> createState() => _CreditViewlistState();
}

class _CreditViewlistState extends State<CreditViewlist> {
  final TextEditingController CreditsearchController = TextEditingController();
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
          'Credit View Details',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xffAED9BA),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: CreditsearchController,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search Receipts',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            FilterButton(
              FiltericonData: Icons.filter_alt_rounded,
              onTapButtton: () {
                _CreditBottomSheet(context);
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CreditNote()),
          );

          //_filterReceipts(); // Update filtered list with new receipt
        },
        child: const Icon(Icons.add),
        backgroundColor: Color.fromARGB(255, 121, 162, 139),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    );
  }

  void _CreditBottomSheet(BuildContext context) {
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
              items: creditlist,
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
                  creditlisttext = newValue!;
                });
              },
              selectedItem: creditlisttext,
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
