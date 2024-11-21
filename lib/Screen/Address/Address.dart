import 'package:flutter/material.dart';

class Address extends StatelessWidget {
  const Address({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Enter Address',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'Address Line 1',
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'Address Line 2',
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 60,
                        width: 190,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            focusedBorder: OutlineInputBorder(),
                            labelStyle: TextStyle(color: Colors.black),
                            hintText: 'Phone',
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
                  const SizedBox(
                    height: 25,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'City',
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'State',
                      // prefixIcon: Icon(
                      //   Icons.emergency,
                      //   color: Colors.red,
                      // ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 80,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: const Color(0xff278942),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                          child: Text(
                        'Save & Update',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
