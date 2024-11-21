import 'package:flutter/material.dart';

class AddBankDetails extends StatefulWidget {
  const AddBankDetails({super.key});

  @override
  State<AddBankDetails> createState() => _AddBankDetailsState();
}

class _AddBankDetailsState extends State<AddBankDetails> {
  bool _isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(248, 255, 251, 251),
      appBar: AppBar(
        backgroundColor: const Color(0xffAED9BA),
        title: const Text(
          'Add New Bank Details',
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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 25, right: 25),
              child: Container(
                height: 800,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Basic Details',
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.w500)),
                      const SizedBox(
                        height: 15,
                      ),
                      const Row(
                        children: [
                          Text(
                            'Bank IFSC',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
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
                      Row(
                        children: [
                          const Flexible(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Enter Bank IFSC code',
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xffC8C8C8)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                focusedBorder: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Container(
                              height: 55,
                              color: const Color(0xffAED9BA),
                              // text color ,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xffAED9BA),
                                  // text color
                                ),
                                onPressed: () {
                                  // Your fetch details function here
                                },
                                child: const Text('Fetch Details',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          Text(
                            'Bank Name',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
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
                      const TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter bank name',
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          focusedBorder: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          Text(
                            'Bank account no.',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
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
                      const TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter bank account number',
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          focusedBorder: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          Text(
                            'Confirm Bank account no.',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
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
                      const TextField(
                        decoration: InputDecoration(
                          hintText: 'Confirm your bank account number',
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          focusedBorder: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          Text(
                            'Bank branch name',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
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
                      const TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter bank branch name',
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          focusedBorder: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          Text(
                            'UPI',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.error)
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter UPI(optional) ',
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          focusedBorder: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          const Text(
                            'Default',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 10),
                          Switch(
                            activeColor: Colors.green,
                            value: _isSwitched,
                            onChanged: (bool newValue) {
                              setState(() {
                                _isSwitched = newValue;
                              });
                            },
                          ),
                          Text(
                            _isSwitched ? 'On' : 'Off',
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                            ),
                          ),
                          const SizedBox(width: 10),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff278942),
              ),
              child: const Text('Add Bank'),
            )
          ],
        ),
      ),
    );
  }
}
