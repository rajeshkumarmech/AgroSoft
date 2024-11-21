// import 'package:agroapp/Reusable/ButtonReusable.dart';
import 'package:flutter/material.dart';

import 'Reusable/ButtonReusable.dart';
import 'Screen/Transaction/TransactionMainPage.dart';
import 'Screen/TransactionReport.dart/ReportTypes.dart';

class TopicButton extends StatelessWidget {
  const TopicButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Topics Details',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xffAED9BA),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Mybutton(
              iconData: Icons.topic_outlined,
              Buttontext: 'Transaction',
              onTapButtton: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TransactionDetails()),
                );
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Mybutton(
              iconData: Icons.topic_outlined,
              Buttontext: 'Reports',
              onTapButtton: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ReportTypes()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
