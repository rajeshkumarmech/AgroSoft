import 'package:flutter/material.dart';

class AddSuppliers extends StatefulWidget {
  const AddSuppliers({super.key});

  @override
  State<AddSuppliers> createState() => _AddSuppliersState();
}

class _AddSuppliersState extends State<AddSuppliers> {
  String _selectedCountryCode = '+91';
  // ignore: unused_field
  String _phoneNumber = '';

  final List<String> _countryCodes = [
    '+1', // USA
    '+44', // UK
    '+91', // India
    // Add more country codes as needed
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(248, 255, 251, 251),
        appBar: AppBar(
          backgroundColor: const Color(0xffAED9BA),
          title: const Text(
            'Add Suppliers',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, color: Colors.black),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
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
                Icons.file_download_outlined,
                size: 25,
              ),
              color: Colors.black,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Basic Details',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Container(
                        height: 250,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Name',
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey)),
                                  focusedBorder: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.all(10.0),
                            //   child: TextField(
                            //     decoration: InputDecoration(
                            //       hintText: 'Enter Mobile Number',
                            //       enabledBorder: OutlineInputBorder(),
                            //       focusedBorder: OutlineInputBorder(),
                            //     ),
                            //   ),
                            // ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        bottomLeft: Radius.circular(4.0),
                                      ),
                                    ),
                                    child: DropdownButton<String>(
                                      value: _selectedCountryCode,
                                      onChanged: (String? newValue) {
                                        if (newValue != null) {
                                          setState(() {
                                            _selectedCountryCode = newValue;
                                          });
                                        }
                                      },
                                      items: _countryCodes
                                          .map<DropdownMenuItem<String>>(
                                              (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                      underline: const SizedBox(),
                                    ),
                                  ),
                                  Expanded(
                                    child: TextField(
                                      decoration: const InputDecoration(
                                        hintText: 'Enter Mobile Number',
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(4.0),
                                            bottomRight: Radius.circular(4.0),
                                          ),
                                        ),
                                      ),
                                      keyboardType: TextInputType.phone,
                                      onChanged: (value) {
                                        setState(() {
                                          _phoneNumber = value;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'E-mail',
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey)),
                                  focusedBorder: OutlineInputBorder(),
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
                    const Text(
                      'Company Details (optional)',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Container(
                          height: 220,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 60,
                                        width: 190,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)),
                                        ),
                                        child: const TextField(
                                          decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey)),
                                            focusedBorder: OutlineInputBorder(),
                                            labelText: 'GST Number',
                                            labelStyle:
                                                TextStyle(color: Colors.black),
                                            hintText: '22AAAAAA0000A1Z5',
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        height: 60,
                                        decoration: const BoxDecoration(
                                          color: Color(0xffAED9BA),
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(5.0),
                                              bottomRight: Radius.circular(5)),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            'Fetch Details',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Name',
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey)),
                                    focusedBorder: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Billing Address (optional)',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 60,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Row(
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
                                      return SingleChildScrollView(
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              const Text(
                                                'Enter Address',
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
                                                  hintText: 'Address Line 1',
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: Color(
                                                                  0xffC8C8C8)),
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          10))),
                                                  focusedBorder:
                                                      OutlineInputBorder(),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              const TextField(
                                                decoration: InputDecoration(
                                                  hintText: 'Address Line 2',
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: Color(
                                                                  0xffC8C8C8)),
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          10))),
                                                  focusedBorder:
                                                      OutlineInputBorder(),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              Row(
                                                children: [
                                                  const Expanded(
                                                    flex: 1,
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                        hintText: 'Pincode',
                                                        enabledBorder: OutlineInputBorder(
                                                            borderSide: BorderSide(
                                                                color: Color(
                                                                    0xffC8C8C8)),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            10))),
                                                        focusedBorder:
                                                            OutlineInputBorder(),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      height: 55,
                                                      color: const Color(
                                                          0xffAED9BA),
                                                      // text color ,
                                                      child: ElevatedButton(
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          backgroundColor:
                                                              const Color(
                                                                  0xffAED9BA),
                                                          // text color
                                                        ),
                                                        onPressed: () {
                                                          // Your fetch details function here
                                                        },
                                                        child: const Text(
                                                            'Fetch Details',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400)),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              const TextField(
                                                decoration: InputDecoration(
                                                  hintText: 'City',
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: Color(
                                                                  0xffC8C8C8)),
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          10))),
                                                  focusedBorder:
                                                      OutlineInputBorder(),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              const TextField(
                                                decoration: InputDecoration(
                                                  hintText: 'State',
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: Color(
                                                                  0xffC8C8C8)),
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          10))),
                                                  focusedBorder:
                                                      OutlineInputBorder(),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 40,
                                              ),
                                              GestureDetector(
                                                onTap: () {},
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 80, left: 80),
                                                  child: Container(
                                                    height: 50,
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                        color: const Color(
                                                            0xff278942),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                    child: const Center(
                                                        child: Text(
                                                      'Save & Update',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 25,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    )),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                                icon: const Icon(
                                  Icons.add_circle,
                                )),
                            const Text('Billing Address')
                          ],
                        )),
                  ]),
            ),
            Container(
                height: 150,
                width: double.infinity,
                color: const Color(0xffD9D9D9),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        height: 80,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: const Color(0xff278942),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                            child: Text(
                          'Submit',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                  ],
                ))
          ]),
        ));
  }
}
