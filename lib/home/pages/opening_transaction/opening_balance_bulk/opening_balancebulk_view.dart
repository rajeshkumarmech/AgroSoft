import 'package:agrosoft/home/pages/cash&banking/cheque_issue/add_cheque_issue.dart';
import 'package:flutter/material.dart';

import '../../sales/AgainstView/againstview.dart';
import 'opening_balancebulk_sample.dart';



class OpeningBalancebulkView extends StatelessWidget {
  const OpeningBalancebulkView ({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController search = TextEditingController();
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffAED9BA),
        title: const Text(
          'Cheque Issue Status',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.of(context).push(
      //         MaterialPageRoute(builder: (context) => const AddChequeIssue()));
      //   },
      //   backgroundColor: const Color(0xffAED9BA),
      //   child: const Icon(
      //     Icons.add,
      //     size: 20,
      //     color: Colors.white,
      //   ),
      // ),
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 8),
            child: TextFormField(
              controller: search,
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
                hintText: 'Search by name',
                hintStyle: const TextStyle(
                    color: Colors.black45,
                    fontFamily: 'Jost',
                    fontSize: 19,
                    fontWeight: FontWeight.w400,
                    height: 20 / 14),
              ),
            ),
          ),
          listofsalesorder('Priya','1','11/11/2024',
                  () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const  OpeningBalancebulkSample()));

              })

        ],
      ),

    );

  }

  GestureDetector listofsalesorder( String name,String id, String date,
       VoidCallback function) {
    return GestureDetector(
      onTap: function,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Container(
          height: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.shade100),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey.shade300,
                child: Text(
                  id[0],
                  style: const TextStyle(
                      color: Colors.black45,
                      fontFamily: 'Jost',
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      height: 20 / 14),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 200),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                          color: Colors.black,
                          fontFamily: 'Jost',
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                          height: 20 / 14),
                    ),
                    Text(
                      date,
                      style: const TextStyle(
                          color: Colors.black45,
                          fontFamily: 'Jost',
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          height: 20 / 14),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }





}