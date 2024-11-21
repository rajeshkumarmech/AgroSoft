import 'package:flutter/material.dart';

import '../CreateInvoice/Invoice.dart';

class AddCompanydetails extends StatefulWidget {
  const AddCompanydetails({super.key});

  @override
  State<AddCompanydetails> createState() => _AddCompanydetailsState();
}

class _AddCompanydetailsState extends State<AddCompanydetails> {
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
          'Add Company Details',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Invoice()));
          },
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
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Add Images',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 15),
                    child: Container(
                      height: 120,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        // color: Colors.grey[200],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 233, 233, 233),
                          ),
                          BoxShadow(
                            color: Colors.white70,
                            blurRadius: 2,
                            spreadRadius: 0,
                            offset: Offset(0, 8),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Row(
                          children: [
                            Image.asset('assets/image.png'),
                            const SizedBox(
                              width: 20,
                            ),
                            const Text(
                              'Image',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 26),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Do you have GST?',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Flexible(
                        child: Radio<String>(
                          value: 'Yes',
                          groupValue: selectedOption,
                          activeColor: Colors.green,
                          onChanged: _handleRadioValueChange,
                        ),
                      ),
                      const Text(
                        'Yes',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Radio<String>(
                        value: 'No',
                        groupValue: selectedOption,
                        activeColor: Colors.green,
                        onChanged: _handleRadioValueChange,
                      ),
                      const Text(
                        'No',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  if (selectedOption == 'Yes')
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            'GST Number',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: Container(
                                height: 60,
                                width: 220,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                ),
                                child: const TextField(
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors
                                            .white, // Border color when the TextField is not focused
                                        width: 2.0, // Border width
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors
                                            .white, // Border color when the TextField is focused
                                        width: 2.0, // Border width
                                      ),
                                    ),
                                    hintText: '22AAAAAA0000A1Z5',
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 130,
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
                          ],
                        ),
                      ],
                    )
                  else
                    const SizedBox(
                      height: 10,
                    ),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Text(
                          'Businesss/Company Name',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        '*',
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 60,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors
                                .white, // Border color when the TextField is not focused
                            width: 2.0, // Border width
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors
                                .white, // Border color when the TextField is focused
                            width: 2.0, // Border width
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Text(
                          'Choose your state',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        '*',
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 60,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors
                                .white, // Border color when the TextField is not focused
                            width: 2.0, // Border width
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors
                                .white, // Border color when the TextField is focused
                            width: 2.0, // Border width
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Billing Address (optional)',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors
                                .white, // Border color when the TextField is not focused
                            width: 2.0, // Border width
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors
                                .white, // Border color when the TextField is focused
                            width: 2.0, // Border width
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Business Information (optional)',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 250,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            'Business E-mail',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0, right: 20),
                          child: Container(
                            height: 60,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            child: const TextField(
                              decoration: InputDecoration(
                                hintText: 'company@gmail.com',
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey)),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors
                                        .white, // Border color when the TextField is focused
                                    width: 2.0, // Border width
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            'Business Mobile Number',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0, right: 20),
                          child: Container(
                            height: 60,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            child: const TextField(
                              decoration: InputDecoration(
                                hintTextDirection: TextDirection.ltr,
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey)),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors
                                        .white, // Border color when the TextField is focused
                                    width: 2.0, // Border width
                                  ),
                                ),
                                hintText: 'mobile number',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff278942),
                ),
                child: const Text(
                  'Save & Continue',
                  style: TextStyle(fontSize: 18),
                ))
          ],
        ),
      ),
    );
  }
}
