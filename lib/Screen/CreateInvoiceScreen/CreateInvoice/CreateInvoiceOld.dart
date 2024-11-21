import 'package:dotted_border/dotted_border.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

import '../AddCompanyDetails/Companydetailsscreen.dart';
import '../AddProducts/Addproduct.dart';
import '../BankDetails/AddBankDetails.dart';
import '../Customers/Customers.dart';
import '../Suppliers/Suppliers.dart';

class CreateInvoiceOld extends StatefulWidget {
  const CreateInvoiceOld({super.key});

  @override
  State<CreateInvoiceOld> createState() => _CreateInvoiceOldState();
}

class _CreateInvoiceOldState extends State<CreateInvoiceOld> {
  final List<String> retail = [
    'Retail',
    'Wholesale B-B',
    'Bill of Supply',
    'Branch Supply',
    'CS Retail',
    'SS',
  ];
  final List<String> cgst = ['CGST/SGST', 'IGST'];

  final List<String> include = ['Include Tax', 'Exclude Tax'];
  final List<String> notcs = ['TCS 0.075%', 'TCS 0.1%', 'NO TCS'];
  final List<String> cash = ['CASH', 'CREDIT', 'Running/New'];

  String cgstext = 'CGST/SGST';
  String selectedtext = 'Retail';
  String includetext = 'Include Tax';
  String notcstext = 'NO TCS';
  String cashtext = 'CASH';

  Future<void> selectdate() async {
    await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2200));
  }
  // void initState() {
  //   super.initState();
  //   _filteredItems = items;
  //   _searchController.addListener(() {
  //     filterItems();
  //   });
  // }

  // void filterItems() {
  //   List<String> _results = [];
  //   if (_searchController.text.isEmpty) {
  //     _results = items;
  //   } else {
  //     _results = items
  //         .where((item) =>
  //             item.toLowerCase().contains(_searchController.text.toLowerCase()))
  //         .toList();
  //   }

  //   setState(() {
  //     _filteredItems = _results;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(248, 255, 251, 251),
        appBar: AppBar(
          backgroundColor: const Color(0xffAED9BA),
          title: const Text(
            'Create Invoice',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, color: Colors.black),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Company details',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                          color: const Color(0xffAED9BA),
                          border: Border.all(
                            color: const Color(0xffAED9BA), // Border color
                          ),
                          borderRadius: const BorderRadius.all(
                              Radius.circular(5)), // Optional: Rounded corners
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const AddCompanydetails()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset('assets/creativeinvoiceimage.png'),
                              const SizedBox(
                                width: 15,
                              ),
                              Image.asset('assets/creativeinvoiceimage.png'),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Row(
                        children: [
                          Text(
                            'Customer/Supplier ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.error_sharp)
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Customers()));
                        },
                        child: Container(
                          height: 100,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ElevatedButton.icon(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Customers()));
                                },
                                icon: const Icon(
                                  Icons.add_circle,
                                  color: Color.fromARGB(205, 130, 128, 128),
                                ),
                                label: const Text(
                                  'Customer',
                                  style: TextStyle(color: Colors.black87),
                                ),
                                style: ElevatedButton.styleFrom(
                                  elevation: 5,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 25, vertical: 10),
                                  backgroundColor: const Color(0xffAED9BA),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              ElevatedButton.icon(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Suppliers()));
                                },
                                icon: const Icon(
                                  Icons.add_circle,
                                  color: Color.fromARGB(205, 130, 128, 128),
                                ),
                                label: const Text(
                                  'Supplier',
                                  style: TextStyle(color: Colors.black87),
                                ),
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 25, vertical: 10),
                                  backgroundColor: const Color(0xffAED9BA),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          Text(
                            'Product ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.error_sharp)
                        ],
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.white,

                          borderRadius: BorderRadius.all(
                              Radius.circular(5)), // Optional: Rounded corners
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const AddProduct()));
                              },
                              icon: const Icon(
                                Icons.add_circle,
                                color: Colors.green,
                              ),
                            ),
                            const Text(
                              'Add Products ',
                              style: TextStyle(
                                  color: Color(0xff278942),
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          Text(
                            'Type ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.white,

                          borderRadius: BorderRadius.all(
                              Radius.circular(5)), // Optional: Rounded corners
                        ),
                        child: Row(
                          children: [
                            // Padding(
                            //   padding: EdgeInsets.all(10),
                            //   child: Text(
                            //     'Retail',
                            //     style: TextStyle(
                            //         color: Color(0xff278942),
                            //         fontWeight: FontWeight.bold,
                            //         fontSize: 20),
                            //   ),
                            // ),

                            Expanded(
                              child: DropdownSearch<String>(
                                items: retail,
                                dropdownDecoratorProps:
                                    const DropDownDecoratorProps(
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
                                    selectedtext = newValue!;
                                  });
                                },
                                selectedItem: selectedtext,
                                dropdownBuilder: (context, selectedItem) {
                                  return Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      selectedItem ?? '',
                                      style: const TextStyle(
                                        color: Color(0xff278942),
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
                                        color: Color(0xff278942),
                                      ),
                                    ),
                                    style: TextStyle(
                                      color: Color(0xff278942),
                                    ),
                                  ),
                                  itemBuilder: (context, item, isSelected) {
                                    return Container(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        item,
                                        style: const TextStyle(
                                          color: Color(0xff278942),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),

                            // Expanded(
                            //   child: DropdownSearch<String>(
                            //     items: retail,
                            //     dropdownDecoratorProps:
                            //         const DropDownDecoratorProps(
                            //       dropdownSearchDecoration: InputDecoration(
                            //         suffixIconColor: Color(0xff278942),
                            //         labelStyle: TextStyle(
                            //           color: Color(0xff278942),
                            //           fontWeight: FontWeight.bold,
                            //           fontSize: 30,
                            //         ),
                            //       ),
                            //     ),
                            //     onChanged: (String? newValue) {
                            //       setState(() {
                            //         selectedtext = newValue!;
                            //       });
                            //     },
                            //     selectedItem: selectedtext,
                            //     popupProps: const PopupProps.menu(
                            //       showSearchBox: true,
                            //       searchFieldProps: TextFieldProps(
                            //           decoration: InputDecoration(
                            //             border: OutlineInputBorder(),
                            //           ),
                            //           style:
                            //               TextStyle(color: Color(0xff278942))),
                            //     ),
                            //   ),
                            // ),

                            // DropdownButton<String>(
                            //   value: selectedtext,
                            //   icon: const Icon(
                            //     Icons.keyboard_arrow_down,
                            //     size: 40,
                            //   ),
                            //   items: retail.map((String value) {
                            //     return DropdownMenuItem<String>(
                            //       value: value,
                            //       child: Padding(
                            //         padding: const EdgeInsets.all(8.0),
                            //         child: Column(
                            //           crossAxisAlignment:
                            //               CrossAxisAlignment.start,
                            //           children: [
                            //             Text(
                            //               value,
                            //               style: const TextStyle(
                            //                 color: Color(0xff278942),
                            //                 fontWeight: FontWeight.bold,
                            //                 fontSize: 20,
                            //               ),
                            //             )
                            //           ],
                            //         ),
                            //       ),
                            //     );
                            //   }).toList(),
                            //   onChanged: (String? newValue) {
                            //     setState(() {
                            //       selectedtext = newValue!;
                            //     });
                            //   },
                            // ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.white,

                          borderRadius: BorderRadius.all(
                              Radius.circular(5)), // Optional: Rounded corners
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Padding(
                            //   padding: EdgeInsets.all(10),
                            //   child: Text(
                            //     'Retail',
                            //     style: TextStyle(
                            //         color: Color(0xff278942),
                            //         fontWeight: FontWeight.bold,
                            //         fontSize: 20),
                            //   ),
                            // ),
                            Expanded(
                              child: DropdownSearch<String>(
                                items: cgst,
                                dropdownDecoratorProps:
                                    const DropDownDecoratorProps(
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
                                    cgstext = newValue!;
                                  });
                                },
                                selectedItem: cgstext,
                                dropdownBuilder: (context, selectedItem) {
                                  return Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      selectedItem ?? '',
                                      style: const TextStyle(
                                        color: Color(0xff278942),
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
                                        color: Color(0xff278942),
                                      ),
                                    ),
                                    style: TextStyle(
                                      color: Color(0xff278942),
                                    ),
                                  ),
                                  itemBuilder: (context, item, isSelected) {
                                    return Container(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        item,
                                        style: const TextStyle(
                                          color: Color(0xff278942),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.white,

                          borderRadius: BorderRadius.all(
                              Radius.circular(5)), // Optional: Rounded corners
                        ),
                        child: Row(
                          children: [
                            // Padding(
                            //   padding: EdgeInsets.all(10),
                            //   child: Text(
                            //     'Retail',
                            //     style: TextStyle(
                            //         color: Color(0xff278942),
                            //         fontWeight: FontWeight.bold,
                            //         fontSize: 20),
                            //   ),
                            // ),
                            Expanded(
                              child: DropdownSearch<String>(
                                items: include,
                                dropdownDecoratorProps:
                                    const DropDownDecoratorProps(
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
                                    includetext = newValue!;
                                  });
                                },
                                selectedItem: includetext,
                                dropdownBuilder: (context, selectedItem) {
                                  return Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      selectedItem ?? '',
                                      style: const TextStyle(
                                        color: Color(0xff278942),
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
                                        color: Color(0xff278942),
                                      ),
                                    ),
                                    style: TextStyle(
                                      color: Color(0xff278942),
                                    ),
                                  ),
                                  itemBuilder: (context, item, isSelected) {
                                    return Container(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        item,
                                        style: const TextStyle(
                                          color: Color(0xff278942),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.white,

                          borderRadius: BorderRadius.all(
                              Radius.circular(5)), // Optional: Rounded corners
                        ),
                        child: Row(
                          children: [
                            // Padding(
                            //   padding: EdgeInsets.all(10),
                            //   child: Text(
                            //     'Retail',
                            //     style: TextStyle(
                            //         color: Color(0xff278942),
                            //         fontWeight: FontWeight.bold,
                            //         fontSize: 20),
                            //   ),
                            // ),
                            Expanded(
                              child: DropdownSearch<String>(
                                items: notcs,
                                dropdownDecoratorProps:
                                    const DropDownDecoratorProps(
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
                                    notcstext = newValue!;
                                  });
                                },
                                selectedItem: notcstext,
                                dropdownBuilder: (context, selectedItem) {
                                  return Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      selectedItem ?? '',
                                      style: const TextStyle(
                                        color: Color(0xff278942),
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
                                        color: Color(0xff278942),
                                      ),
                                    ),
                                    style: TextStyle(
                                      color: Color(0xff278942),
                                    ),
                                  ),
                                  itemBuilder: (context, item, isSelected) {
                                    return Container(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        item,
                                        style: const TextStyle(
                                          color: Color(0xff278942),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.white,

                          borderRadius: BorderRadius.all(
                              Radius.circular(5)), // Optional: Rounded corners
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: DropdownSearch<String>(
                                items: cash,
                                dropdownDecoratorProps:
                                    const DropDownDecoratorProps(
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
                                    cashtext = newValue!;
                                  });
                                },
                                selectedItem: cashtext,
                                dropdownBuilder: (context, selectedItem) {
                                  return Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      selectedItem ?? '',
                                      style: const TextStyle(
                                        color: Color(0xff278942),
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
                                        color: Color(0xff278942),
                                      ),
                                    ),
                                    style: TextStyle(
                                      color: Color(0xff278942),
                                    ),
                                  ),
                                  itemBuilder: (context, item, isSelected) {
                                    return Container(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        item,
                                        style: const TextStyle(
                                          color: Color(0xff278942),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Customer Details ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 350,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.white,

                          borderRadius: BorderRadius.all(
                              Radius.circular(5)), // Optional: Rounded corners
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      showModalBottomSheet(
                                        context: context,
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.vertical(
                                            top: Radius.circular(25),
                                          ),
                                        ),
                                        builder: (BuildContext context) {
                                          return Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const SizedBox(
                                                  height: 15,
                                                ),
                                                const Text(
                                                  'Select Bank',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                const SizedBox(
                                                  height: 30,
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                const AddBankDetails()));
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 10,
                                                            right: 70),
                                                    child: Container(
                                                      height: 50,
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                          color: const Color(
                                                              0xff278942),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10)),
                                                      child: Center(
                                                          child: Row(
                                                        children: [
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                          Flexible(
                                                            child: IconButton(
                                                                onPressed:
                                                                    () {},
                                                                icon:
                                                                    const Icon(
                                                                  Icons
                                                                      .add_circle_outline_outlined,
                                                                  color: Colors
                                                                      .white,
                                                                  size: 22,
                                                                )),
                                                          ),
                                                          const Text(
                                                            'Add Bank Account',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 25,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                          ),
                                                        ],
                                                      )),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    icon: const Icon(Icons.account_balance)),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text('Select Bank',
                                    style: TextStyle(fontSize: 16))
                              ],
                            ),

                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      showModalBottomSheet(
                                        context: context,
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.vertical(
                                            top: Radius.circular(25),
                                          ),
                                        ),
                                        builder: (BuildContext context) {
                                          return Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                const Text(
                                                  'Notes',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                const TextField(
                                                  decoration: InputDecoration(
                                                    enabledBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xffC8C8C8)),
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10))),
                                                    focusedBorder:
                                                        OutlineInputBorder(),
                                                  ),
                                                  maxLines: 5,
                                                ),
                                                const SizedBox(
                                                  height: 40,
                                                ),
                                                GestureDetector(
                                                  onTap: () {},
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 80,
                                                            left: 80),
                                                    child: Container(
                                                      height: 50,
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                          color: const Color(
                                                              0xff278942),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10)),
                                                      child: const Center(
                                                          child: Text(
                                                        'Save',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 25,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      )),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    icon: const Icon(Icons.edit_note)),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text('Add Notes',
                                    style: TextStyle(fontSize: 16))
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),

                            Row(
                              children: [
                                const SizedBox(
                                  width: 15,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: const Image(
                                      image: AssetImage(
                                          'images/tdesign_money.png')),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                const Text('Add Delivery/Shipping Charges',
                                    style: TextStyle(fontSize: 16))
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon:
                                        const Icon(Icons.attach_file_rounded)),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  'Attach File',
                                  style: TextStyle(fontSize: 16),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Center(
                              child: Text('Attachment'),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: DottedBorder(
                                color: Colors.black,
                                // strokeWidth: 0.9,
                                dashPattern: const [10, 10],
                                borderType: BorderType.RRect,
                                child: const SizedBox(
                                  height: 50,
                                  width: double.infinity,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.add, color: Color(0xff278942)),
                                      Text(
                                        'Attachment',
                                        style: TextStyle(
                                          color: Color(0xff278942),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            // ElevatedButton.icon(
                            //   onPressed: () {
                            //     // Define the action when the button is pressed
                            //   },
                            //   icon: Icon(Icons.add_circle,
                            //       color: Colors
                            //           .green), // The icon displayed on the button
                            //   label: Text(
                            //     'Attachment',
                            //     style: TextStyle(color: Colors.green),
                            //   ),
                            //   style: ElevatedButton.styleFrom(
                            //     padding: EdgeInsets.symmetric(
                            //         horizontal: 25, vertical: 10),
                            //     backgroundColor: Colors.white,
                            //     shape: RoundedRectangleBorder(
                            //       borderRadius: BorderRadius.circular(10),
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ]),
              ),
              Container(
                height: 150,
                width: double.infinity,
                color: const Color(0xffD9D9D9),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Total Amount'),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              '0.00',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
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
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
