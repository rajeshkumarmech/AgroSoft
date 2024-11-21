
import 'package:flutter/material.dart';

import 'Dinesh.dart';
import 'Reusable.dart';

class Invoice extends StatefulWidget {
  const Invoice({super.key});

  @override
  State<Invoice> createState() => _InvoiceState();
}

class _InvoiceState extends State<Invoice> {
  TextEditingController _dateController = TextEditingController();
  final TextEditingController _duedateController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _customerNameController = TextEditingController();
  final TextEditingController _customerPhoneController =
      TextEditingController();
  final TextEditingController _customerAddressController =
      TextEditingController();
  final TextEditingController _customerAadhaarController =
      TextEditingController();
  final TextEditingController _ReferenceController = TextEditingController();
  final TextEditingController _CropsnameController = TextEditingController();
  final _CropssageController = TextEditingController();
  final _CropsspecController = TextEditingController();
  final _RepresentativeController = TextEditingController();
  final _ROReferenceController = TextEditingController();
  final _LRReferenceController = TextEditingController();
  final _DCReferenceController = TextEditingController();
  final _TransportController = TextEditingController();
  final _VehicleController = TextEditingController();
  final _LocationController = TextEditingController();
  final _TaxController = TextEditingController();

  final List<String> tax = ['0%', '5%', '12%', '18%', '28%'];
  final List<String> discount = [
    '%',
    'RS',
  ];
  final List<String> delivery = [
    'Items Delivery On',
    'Items Delivery Off',
  ];
  final List<String> mainlocation = ['Main Location', 'Madurai', 'Coimbatore'];
  final List<String> pettycash = [
    'PETTY CASH',
    'SBI',
    'INDIAN BANK',
    'CUB BANK'
  ];
  final List<String> neft = [
    'CHEQUE',
    'CASH',
    'NEFT',
    'UPI(GPAY PHONE)',
    'IMPS'
  ];
  String deliverytext = 'Items Delivery On';
  String mainlocationtext = 'Main Location';
  String nefttext = 'CHEQUE';
  String pettycashtext = 'PETTY CASH';

  String cgstext = 'CGST/SGST';
  String selectedtext = 'Retail';
  String includetext = 'Include Tax';
  String notcstext = 'NO TCS';
  String cashtext = 'CASH';
  String taxtext = '0%';
  String discounttext = '%';
  bool checkbxvalue = false;
  Map<String, bool?> checkbxvalues = {
    'rowcheck': true,
    'checkbxvalue': false,
  };
  final List<Widget> _containers = [const BUILDcontainer()];
  //List<Widget> goodsandServiceslist = [const GoodsServices()];

  void _removeContainer() {
    setState(() {
      if (_containers.isNotEmpty) {
        _containers.removeLast();
      }
    });
  }

  void _addContainer() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _containers.add(const BUILDcontainer());
      });
    });
  }

  Future<void> selectDate() async {
    DateTime? datepicker = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100));
    if (datepicker != null) {
      setState(() {
        _dateController.text = datepicker.toString().split(' ')[0];
      });
    }
  }

  Future<void> selectanotherDate() async {
    DateTime? datepicker = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100));
    if (datepicker != null) {
      setState(() {
        _duedateController.text = datepicker.toString().split(' ')[0];
      });
    }
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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 5,
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
                     DropdownButtonWidget(
                      items: [
                        'Retail',
                        'Wholesale B-B',
                        'Bill of Supply',
                        'Branch Supply',
                        'CS Retail',
                        'SS',
                      ],
                      selectedItem: 'Retail',
                    ),
                    const DropdownButtonWidget(
                      items: ['CGST/SGST', 'IGST'],
                      selectedItem: 'IGST',
                    ),
                    const DropdownButtonWidget(
                      items: ['Include Tax', 'Exclude Tax'],
                      selectedItem: 'Exclude Tax',
                    ),
                    const DropdownButtonWidget(
                      items: ['TCS 0.075%', 'TCS 0.1%', 'NO TCS'],
                      selectedItem: 'TCS 0.1%',
                    ),
                    const DropdownButtonWidget(
                      items: ['CASH', 'CREDIT', 'Running/New'],
                      selectedItem: 'CREDIT',
                    ),
                    const Text(
                      'Customer Details ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
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
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            CustomTextFormField(
                              hintText: "Customer Name",
                              controller: _customerNameController,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomTextFormField(
                              hintText: "Customer Phone",
                              controller: _customerPhoneController,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomTextFormField(
                              hintText: "Customer Address",
                              controller: _customerAddressController,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomTextFormField(
                              hintText: "Customer Aadhaar",
                              controller: _customerAadhaarController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter Customer Aadhaar';
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Date',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
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
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: TextFormField(
                              controller: _dateController,
                              decoration: const InputDecoration(
                                hintText: "Date",
                                prefixIcon: Icon(
                                  Icons.calendar_month_outlined,
                                  color: Color.fromARGB(255, 85, 84, 84),
                                ),
                                filled: true,
                                hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 85, 84, 84),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 1),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 1),
                                ),
                              ),
                              readOnly: true,
                              onTap: () {
                                selectDate();
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomTextFormField(
                            hintText: "Reference",
                            controller: _ReferenceController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter Customer Aadhaar';
                              }
                              return null;
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Row(
                              children: [
                                Container(
                                  height: 60,
                                  width: 100,
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(164, 204, 216, 192),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(4))),
                                  child: const Center(
                                    child: Text(
                                      'Due Date',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 85, 84, 84),
                                          fontSize: 18),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: TextFormField(
                                    controller: _duedateController,
                                    decoration: const InputDecoration(
                                      filled: true,
                                      hintStyle: TextStyle(
                                        color: Color.fromARGB(255, 85, 84, 84),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8)),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey, width: 1),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey, width: 1),
                                      ),
                                    ),
                                    readOnly: true,
                                    onTap: () {
                                      selectanotherDate();
                                    },
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Others',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
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
                                            height: 10,
                                          ),
                                          CustomTextFormField(
                                            hintText: "Crops Name",
                                            controller: _CropsnameController,
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Please enter Crops Name';
                                              }
                                              return null;
                                            },
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          CustomTextFormField(
                                            hintText: 'Crops Age',
                                            controller: _CropssageController,
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Please enter Crops Age';
                                              }
                                              return null;
                                            },
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          CustomTextFormField(
                                            hintText: "Crops Spec",
                                            controller: _CropsspecController,
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Please enter Crops Spec';
                                              }
                                              return null;
                                            },
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green[300],
                                elevation: 5, // Elevation
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      12), // Rounded corners
                                ),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 15), // Padding
                              ),
                              child: const Text('     ADD CROP    ')),
                          const SizedBox(
                            height: 15,
                          ),
                          ElevatedButton(
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
                                            height: 10,
                                          ),
                                          CustomTextFormField(
                                            hintText: "RO Reference",
                                            controller: _ROReferenceController,
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Please enter Crops Name';
                                              }
                                              return null;
                                            },
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          CustomTextFormField(
                                            hintText: "DC Reference",
                                            controller: _DCReferenceController,
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Please enter Crops Name';
                                              }
                                              return null;
                                            },
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          CustomTextFormField(
                                            hintText: "LR Reference",
                                            controller: _LRReferenceController,
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Please enter Crops Name';
                                              }
                                              return null;
                                            },
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          CustomTextFormField(
                                            hintText:
                                                "Representative Reference",
                                            controller:
                                                _RepresentativeController,
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Please enter Crops Name';
                                              }
                                              return null;
                                            },
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green[300],
                                elevation: 5, // Elevation
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      12), // Rounded corners
                                ),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 15), // Padding
                              ),
                              child: const Text('ADD REFERENCE')),
                          const SizedBox(
                            height: 15,
                          ),
                          ElevatedButton(
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
                                            height: 10,
                                          ),
                                          CustomTextFormField(
                                            hintText: "Transport",
                                            controller: _TransportController,
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Please enter transport type';
                                              }
                                              return null;
                                            },
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          CustomTextFormField(
                                            hintText: "Vehicle No",
                                            controller: _VehicleController,
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Please enter Vehicle No';
                                              }
                                              return null;
                                            },
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          CustomTextFormField(
                                            hintText: "Location",
                                            controller: _LocationController,
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Please enter location Name';
                                              }
                                              return null;
                                            },
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green[300],
                                elevation: 5, // Elevation
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      12), // Rounded corners
                                ),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 15), // Padding
                              ),
                              child: const Text('  ADD DELIVERY  ')),
                        ]),
                  ]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Text(
                    'Goods & Service',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Checkbox(
                    value: checkbxvalue,
                    onChanged: (bool? check) {
                      setState(() {
                        checkbxvalue = check!;
                        checkbxvalues['checkbxvalue'] = check;
                      });
                    }),
              ],
            ),

            const SizedBox(
              height: 10,
            ),
            // for (int i = 0; i < _containers.length; i++) _containers[i],

            // Expanded(
            //   child: ListView.builder(
            //     itemCount: _containers.length,
            //     physics: const ClampingScrollPhysics(),
            //     itemBuilder: (context, index) {
            //       return _containers[index];
            //     },
            //   ),
            // ),
            Column(
              children: [
                for (int i = 0; i < _containers.length; i++) _containers[i],
                // ListView.builder(
                //   itemCount: _containers.length,
                //   itemBuilder: (context, index) {
                //     return _containers[index];
                //   },
                // ),
                // Expanded(
                //   child: ListView(
                //     children: [
                //       for (int i = 0; i < _containers.length; i++)
                //         _containers[i],
                //     ],
                //   ),
                // ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.green[400],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8))),
                      child: TextButton(
                        onPressed: _addContainer,
                        child: const Text(
                          'Add More',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.red[400],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8))),
                      child: TextButton(
                        onPressed: _removeContainer,
                        child: const Text(
                          'Delete',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            // Column(
            //   children: [
            //     Expanded(child: ListView(
            //   children: _containers,
            // ), )
            //   ],
            // ),
            // ListView.builder(
            //   itemCount: _containers.length,
            //   itemBuilder: (context, index) {
            //     return _containers[index];
            //   },
            // ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextFormField(
                  hintText: 'Freight',
                  controller: _TaxController,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    DiscountDropdown(
                      items: delivery,
                      selectedItem: deliverytext,
                      onChanged: (String? newValue) {
                        setState(() {
                          deliverytext = newValue!;
                        });
                      },
                    ),
                    DiscountDropdown(
                      items: mainlocation,
                      selectedItem: mainlocationtext,
                      onChanged: (String? newValue) {
                        setState(() {
                          mainlocationtext = newValue!;
                        });
                      },
                    ),
                  ],
                ),
                CustomTextFormField(
                  hintText: 'Adjustment',
                  controller: _TaxController,
                ),
                Row(
                  children: [
                    DiscountDropdown(
                      items: neft,
                      selectedItem: nefttext,
                      onChanged: (String? newValue) {
                        setState(() {
                          nefttext = newValue!;
                        });
                      },
                    ),
                    DiscountDropdown(
                      items: pettycash,
                      selectedItem: pettycashtext,
                      onChanged: (String? newValue) {
                        setState(() {
                          pettycashtext = newValue!;
                        });
                      },
                    ),
                  ],
                ),
                CustomTextFormField(
                  hintText: 'Add or less',
                  controller: _TaxController,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      child: Container(
                        height: 60,
                        width: 100,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(164, 204, 216, 192),
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                        child: const Center(
                          child: Text(
                            'Paid',
                            style: TextStyle(
                                color: Color.fromARGB(255, 85, 84, 84),
                                fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: CustomTextFormField(
                        hintText: 'Amount',
                        controller: _TaxController,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      child: Container(
                        height: 60,
                        width: 100,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(164, 204, 216, 192),
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                        child: const Center(
                          child: Text(
                            'Due',
                            style: TextStyle(
                                color: Color.fromARGB(255, 85, 84, 84),
                                fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: CustomTextFormField(
                        hintText: '0.00',
                        controller: _TaxController,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      child: Container(
                        height: 60,
                        width: 100,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(164, 204, 216, 192),
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                        child: const Center(
                          child: Text(
                            'Round',
                            style: TextStyle(
                                color: Color.fromARGB(255, 85, 84, 84),
                                fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: CustomTextFormField(
                        hintText: 'Round',
                        controller: _TaxController,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      child: Container(
                        height: 60,
                        width: 100,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(164, 204, 216, 192),
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                        child: const Center(
                          child: Text(
                            'Total',
                            style: TextStyle(
                                color: Color.fromARGB(255, 85, 84, 84),
                                fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: CustomTextFormField(
                        hintText: 'Total',
                        controller: _TaxController,
                      ),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.green[400],
                      borderRadius: const BorderRadius.all(Radius.circular(8))),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      ' Save ',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.green[400],
                      borderRadius: const BorderRadius.all(Radius.circular(8))),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Save & Print',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BUILDcontainer extends StatefulWidget {
  const BUILDcontainer({super.key});

  @override
  State<BUILDcontainer> createState() => _BUILDcontainerState();
}

class _BUILDcontainerState extends State<BUILDcontainer> {
  final _TotalController = TextEditingController();

  final _QuantityController = TextEditingController();
  final _PriceController = TextEditingController();
  final _BatchlotController = TextEditingController();
  final _GoodsDesController = TextEditingController();
  final _DiscountController = TextEditingController();
  final _TaxController = TextEditingController();
  final List<String> discount = [
    '%',
    'RS',
  ];
  final List<String> delivery = [
    'Items Delivery On',
    'Items Delivery Off',
  ];
  final List<String> mainlocation = ['Main Location', 'Madurai', 'Coimbatore'];
  final List<String> pettycash = [
    'PETTY CASH',
    'SBI',
    'INDIAN BANK',
    'CUB BANK'
  ];
  final List<String> neft = [
    'CHEQUE',
    'CASH',
    'NEFT',
    'UPI(GPAY PHONE)',
    'IMPS'
  ];
  final List<String> tax = ['0%', '5%', '12%', '18%', '28%'];
  String deliverytext = 'Items Delivery On';
  String mainlocationtext = 'Main Location';
  String nefttext = 'CHEQUE';
  String pettycashtext = 'PETTY CASH';
  String taxtext = '0%';
  String discounttext = '%';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 750,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.grey[300]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Checkbox(
            //   value: _checkboxValues[index],
            //   onChanged: (bool? check) {
            //     setState(() {
            //       _checkboxValues[index] = check!;
            //     });
            //   },
            // ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Goods & Service Description',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  CustomTextFormField(
                    hintText: '',
                    controller: _GoodsDesController,
                  ),
                  const Text(
                    'Batch/Lot',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  CustomTextFormField(
                    hintText: '',
                    controller: _BatchlotController,
                  ),
                  const Text(
                    'Price',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  CustomTextFormField(
                    hintText: '',
                    controller: _PriceController,
                  ),
                  const Text(
                    'Discount',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      DiscountDropdown(
                        items: discount,
                        selectedItem: discounttext,
                        onChanged: (String? newValue) {
                          setState(() {
                            discounttext = newValue!;
                          });
                        },
                      ),
                      Expanded(
                        child: CustomTextFormField(
                          hintText: '',
                          controller: _DiscountController,
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    'Quantity',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  CustomTextFormField(
                    hintText: '',
                    controller: _QuantityController,
                  ),
                  const Text(
                    'Tax',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      DiscountDropdown(
                        items: tax,
                        selectedItem: taxtext,
                        onChanged: (String? newValue) {
                          setState(() {
                            taxtext = newValue!;
                          });
                        },
                      ),
                      Expanded(
                        child: CustomTextFormField(
                          hintText: '',
                          controller: _TaxController,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Total',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  CustomTextFormField(
                    hintText: "0.00",
                    controller: _TotalController,
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
