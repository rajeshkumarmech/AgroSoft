import 'package:flutter/material.dart';

class Morepage extends StatelessWidget {
  const Morepage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 55,
            width: size.width,
            decoration:BoxDecoration(color: const Color(0xFFAED9BA).withAlpha(180)),
            child: Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  height: 30,
                  width: 35,
                  child: Image.asset('assets/images/Group.png'),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  'YOUR BUSINESS NAME',
                  style: TextStyle(
                      fontFamily: 'Jost',
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                      height: 20 / 20,
                      color: Color(0xFF263238)),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Profile',
                  style: TextStyle(
                      fontFamily: 'Jost',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      height: 20 / 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      listofmorepage(
                          'assets/images/Vector.png', 'Company details', () {}),
                      listofmorepage(
                          'assets/images/Group_1.png', 'User Profile', () {}),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Settings',
                  style: TextStyle(
                      fontFamily: 'Jost',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      height: 20 / 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      listofmorepage('assets/images/solar_notes-outline.png',
                          'Document Settings', () {}),
                      listofmorepage(
                          'assets/images/lets-icons_setting-line.png',
                          'General Settings',
                          () {}),
                      listofmorepage(
                          'assets/images/cil_bank.png', 'Bank', () {}),
                      listofmorepage('assets/images/tabler_book.png',
                          'Notes & Terms', () {}),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Bills',
                  style: TextStyle(
                      fontFamily: 'Jost',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      height: 20 / 20),
                ),
                const SizedBox(
                  height: 10,

                ),
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),

                  child: Column(
                    children: [
                      listofmorepage('assets/images/icon _Money Bag_.png',
                          'Settlements', () {}),
                      listofmorepage(
                          'assets/images/solar_hand-money-outline.png',
                          'Expenses',
                          () {}),
                      listofmorepage('assets/images/clarity_car-line.png',
                          'Eway Bills', () {}),
                      listofmorepage('assets/images/basil_invoice-outline.png',
                          'E-Invoices', () {}),
                      listofmorepage('assets/images/vaadin_money-deposit.png',
                          'Credit Notes', () {}),
                      listofmorepage('assets/images/fa-solid_people-carry.png',
                          'Purchase Order', () {}),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Timelines',
                  style: TextStyle(
                      fontFamily: 'Jost',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      height: 20 / 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      listofmorepage(
                          'assets/images/icon _money donation thin_.png',
                          'Payments',
                          () {}),
                      listofmorepage(
                          'assets/images/material-symbols_inventory-2-outline.png',
                          'Inventory',
                          () {}),
                      listofmorepage(
                          'assets/images/material-symbols_partner-reports.png',
                          'Reports',
                          () {}),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Support',
                  style: TextStyle(
                      fontFamily: 'Jost',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      height: 20 / 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      listofmorepage('assets/images/bx_support.png',
                          'Help & Support', () {}),
                      listofmorepage(
                          'assets/images/uil_feedback.png', 'Feedback', () {}),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  listofmorepage(String image, String text, Function function) {
    return GestureDetector(
      onTap: () => function(),
      child: SizedBox(
        height: 50,
        child: Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            Image.asset(
              image,
              height: 40,
              width: 40,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: const TextStyle(
                  fontFamily: 'Jost',
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  height: 24 / 17),
            )
          ],
        ),
      ),
    );
  }
}
