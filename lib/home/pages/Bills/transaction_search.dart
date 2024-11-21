import 'package:agrosoft/home/pages/Bills/paidtransaction.dart';
import 'package:flutter/material.dart';

class TransactionSearch extends StatefulWidget {
  const TransactionSearch({super.key});

  @override
  State<TransactionSearch> createState() => _TransactionSearchState();
}

class _TransactionSearchState extends State<TransactionSearch> {
  TextEditingController searching = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding:const EdgeInsets.symmetric(horizontal: 50),
              child: TextFormField(
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  labelStyle: const TextStyle(color: Colors.black),
                  fillColor: Colors.black,
                  focusColor: Colors.black,
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
                  hintText: " Search..",
                  hintStyle: const TextStyle(
                    color: Color.fromARGB(255, 184, 181, 181),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const PaidfunctionInSearch(),
            SizedBox(
              height: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 300,
                      child: Image.asset('assets/images/Group 2703.png')),
                  const Text(
                    'No data found',
                    style: TextStyle(
                        fontFamily: 'Jost',
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        height: 31 / 22,
                        color: Color(0xFF717171)),
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
