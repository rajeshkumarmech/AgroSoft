import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../api/pricelist/purchaseprice/purchasePrice.dart';

class PurchasePriceAdd extends StatelessWidget {
  const PurchasePriceAdd({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController product = TextEditingController();
    TextEditingController price = TextEditingController();
    TextEditingController date = TextEditingController();
    String dropdownValue = 'Option 2';
    Future<Purchaseprice?> sendData(
      String product,
      String price,
      String date,
      String dropdownValue,
    ) async {
      Map<String, String> request = {
        'type': '58',
        'cid': '49542621',
        'uid': '546',
        'aid': '789',
        'date': date,
        'pid': '101112',
        'pname': product,
        'prgroup': dropdownValue,
        'price': price,
      };
      final uri = Uri.parse("https://agrosoftware.in/api/mobile/index.php");
      try {
        final response = await http.post(uri, body: request);
        if (response.statusCode == 200) {
          final responseBody = response.body;
          final jsonResponse = json.decode(responseBody);

          if (jsonResponse['error'] == true) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: const Color.fromARGB(255, 2, 14, 70),
                content: Center(
                  child: Text(
                    jsonResponse['error_mgs'],
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            );
            return null;
          }

          if (responseBody.isNotEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                backgroundColor: Color.fromARGB(255, 251, 251, 252),
                content: Center(
                  child: Text(
                    'Purchase Price saved successfully',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            );
            Navigator.pushNamed(context, '/login');
            return Purchaseprice.fromJson(json.decode(responseBody));
          } else {
            return null;
          }
        } else {
          return null;
        }
      } catch (error) {
        return null;
      }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffAED9BA),
        title: const Text(
          'Purchase Price Add',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Column(
            children: [
              const Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Purchase Price',
                    style: TextStyle(
                      fontFamily: 'Jost',
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      height: 43 / 30,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Inputform(
                controller: product,
                label: 'Product',
              ),
              const SizedBox(
                height: 10,
              ),
              Datepicker(
                datecontroller: date,
              ),
              const SizedBox(
                height: 10,
              ),
              DropdownButtonWidget(
                dropDownItem: const ['Option 1', 'Option 2', 'Option 3'],
                selectedItem: dropdownValue,
                onSelected: (value) {
                  dropdownValue = value;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              Inputform(
                controller: price,
                label: 'Price',
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                height: 180,
              ),
              GestureDetector(
                onTap: () {
                  sendData(product.text, price.text, date.text, dropdownValue);
                },
                child: Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(25)),
                  child: const Center(
                    child: Text(
                      'Save ',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Jost',
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        height: 43 / 30,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class DropdownButtonWidget extends StatefulWidget {
  final List<String> dropDownItem;
  final String selectedItem;
  final ValueChanged<String> onSelected;
  const DropdownButtonWidget({
    super.key,
    required this.dropDownItem,
    required this.selectedItem,
    required this.onSelected,
  });

  @override
  State<DropdownButtonWidget> createState() => _DropdownButtonWidgetState();
}

class _DropdownButtonWidgetState extends State<DropdownButtonWidget> {
  late String selectedItem;
  @override
  void initState() {
    super.initState();
    selectedItem = widget.selectedItem;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: DropdownButtonFormField<String>(
        value: selectedItem,
        items: widget.dropDownItem.map((String item) {
          return DropdownMenuItem<String>(
            value: item,
            child: Text(
              item,
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
          );
        }).toList(),
        onChanged: (String? val) {
          setState(() {
            selectedItem = val!;
          });
          widget.onSelected(selectedItem);
        },
        icon: const Icon(Icons.arrow_drop_down),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 177, 174, 174),
              width: 0,
            ),
          ),
          labelStyle: const TextStyle(color: Colors.black),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
                color: Color.fromARGB(255, 116, 108, 108), width: 1),
          ),
        ),
      ),
    );
  }
}

class Inputform extends StatefulWidget {
  final String label;
  final TextEditingController controller;

  const Inputform({super.key, required this.label, required this.controller});

  @override
  State<Inputform> createState() => _InputformState();
}

class _InputformState extends State<Inputform> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: TextFormField(
        controller: widget.controller,
        keyboardType: TextInputType.name,
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          labelStyle: const TextStyle(color: Colors.black),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
                color: Color.fromARGB(255, 177, 174, 174), width: 0),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 177, 174, 174),
              width: 0,
            ),
          ),
          label: Text(
            widget.label,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}

class Datepicker extends StatefulWidget {
  final TextEditingController datecontroller;

  const Datepicker({super.key, required this.datecontroller});

  @override
  State<Datepicker> createState() => _DatepickerState();
}

class _DatepickerState extends State<Datepicker> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: TextFormField(
        readOnly: true,
        onTap: _selectdate,
        controller: widget.datecontroller,
        style: const TextStyle(color: Color.fromARGB(255, 10, 10, 10)),
        decoration: InputDecoration(
          labelStyle: const TextStyle(color: Colors.white),
          suffixIcon: const Icon(Icons.calendar_month_outlined),
          focusColor: Colors.black,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
                color: Color.fromARGB(255, 78, 76, 76), width: 1),
          ),
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 46, 45, 45),
              width: 1,
            ),
          ),
          hintText: "Date",
          hintStyle: const TextStyle(
            color: Color.fromARGB(255, 221, 217, 217),
          ),
        ),
      ),
    );
  }

  Future<void> _selectdate() async {
    DateTime? datepicked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (datepicked != null) {
      setState(() {
        widget.datecontroller.text = datepicked.toString().split(" ")[0];
      });
    }
  }
}
