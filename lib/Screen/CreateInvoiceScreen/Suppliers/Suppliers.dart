import 'package:flutter/material.dart';

import '../AddCompanyDetails/Companydetailsscreen.dart';
import '../AddSuppliers/Addsupliers.dart';

class Suppliers extends StatefulWidget {
  const Suppliers({super.key});

  @override
  State<Suppliers> createState() => _SuppliersState();
}

class _SuppliersState extends State<Suppliers> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(248, 255, 251, 251),
        appBar: AppBar(
          backgroundColor: const Color(0xffAED9BA),
          title: const Text(
            'Suppliers',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, color: Colors.black),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AddCompanydetails()));
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AddSuppliers()));
              },
              icon: const Icon(Icons.add_circle_outline),
              color: Colors.black,
            ),
          ],
        ),
        body: Column(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: const Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 5,
                        ),
                        child: Container(
                          height: 70,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: const ListTile(
                            title: Text(
                              'Team Company',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                            subtitle: Text(
                              '1234567890',
                              style: TextStyle(
                                color: Color.fromARGB(255, 53, 52, 52),
                              ),
                            ),
                            leading: CircleAvatar(
                              backgroundColor: Color(0xffAED9BA),
                              radius: 40,
                              child: Text(
                                'TL',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
