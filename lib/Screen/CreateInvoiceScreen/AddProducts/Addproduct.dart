import 'package:flutter/material.dart';

import '../CreateInvoice/Invoice.dart';

import 'AddProductButtonScreen.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  String selectedOption = '';
  void _handleRadioValueChange(String? value) {
    setState(() {
      selectedOption = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(248, 255, 251, 251),
      appBar: AppBar(
        backgroundColor: const Color(0xffAED9BA),
        title: const Text(
          'Add Product',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Invoice()));
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.qr_code_2,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(children: [
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15)),
                boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 3)]),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.black,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'search here',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AddProductButtonScreen()));
          },
          child: Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
                color: const Color(0xff278942),
                borderRadius: BorderRadius.circular(30)),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                Text(
                  'Add New Product',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            height: 130,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(color: Colors.grey, blurRadius: 3)
                ]),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    const Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Sample Product',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 24),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          ' ₹ 100.00',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 24),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: Row(
                        children: [
                          Flexible(
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add_box_rounded,
                                size: 35,
                                color: Color(0xff278942),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          const Text(
                            '0.0',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 24),
                          ),
                          Flexible(
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.remove_circle_rounded,
                                size: 35,
                                color: Color(0xff278942),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(25),
                        ),
                      ),
                      builder: (context) => SampleProductsheet(),
                    );
                  },
                  child: const SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Icon(
                            Icons.edit_note_rounded,
                            color: Color(0xff278942),
                          ),
                        ),
                        Text(
                          'Edit',
                          style: TextStyle(
                              color: Color(
                            (0xff278942),
                          )),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }

  Widget SampleProductsheet() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Sample Product',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Change Price',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Unit Price',
                      labelStyle: TextStyle(color: Color(0xff278942)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff278942)),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff278942), width: 2)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Price with Tax',
                      labelStyle: TextStyle(color: Color(0xff278942)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff278942)),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff278942), width: 2)),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Discount in',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Radio<String>(
                  value: 'Yes',
                  groupValue: selectedOption,
                  activeColor: Colors.green,
                  onChanged: _handleRadioValueChange,
                ),
                const Text(
                  '%',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Radio<String>(
                    value: 'No',
                    groupValue: selectedOption,
                    activeColor: Colors.green,
                    onChanged: _handleRadioValueChange),
                const Text(
                  '₹',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: selectedOption == 'Yes' ? 'Percentage' : 'Amount',
                labelStyle: const TextStyle(color: Color(0xff278942)),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff278942)),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff278942), width: 2)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Change Quantities & Units',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Product Quantity',
                labelStyle: TextStyle(color: Color(0xff278942)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff278942)),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff278942), width: 2)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Product Description',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Product Description',
                labelStyle: TextStyle(color: Color(0xff278942)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff278942)),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff278942), width: 2)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  children: [
                    Text(
                      'Total Amount',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          '₹',
                          style: TextStyle(
                              color: Color(0xff5E6673),
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '100',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff278942),
                    ),
                    child: const Text(
                      'Create',
                      style: TextStyle(fontSize: 18),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
