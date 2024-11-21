import 'package:agrosoft/home/pages/product&servicespage.dart';
import 'package:flutter/material.dart';

import 'billpage.dart';
import 'homepage.dart';
import 'master/master_pg.dart';
import 'morepage.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;
  final screens = [
    const Homepage(),
    const Billpage(),
    // const Center(
    //   child: Text(
    //     'Master',
    //     style: TextStyle(fontSize: 72),
    //   ),
    // ),
    const master(),
    const Productservicespage(),
    const Morepage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              spreadRadius: 2,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          child: Theme(
            data: Theme.of(context).copyWith(
                bottomNavigationBarTheme: const BottomNavigationBarThemeData(
                  unselectedIconTheme: IconThemeData(
                    size: 18
                  ),
                    selectedLabelStyle: TextStyle(
                        fontFamily: 'Jost',
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        height: 18 / 12,
                        color: Color(0xFF278942)),
                    unselectedLabelStyle: TextStyle(
                        fontFamily: 'Jost',
                        fontWeight: FontWeight.w400,
                        fontSize: 8,
                        height: 18 / 12,
                        color: Color(0xFF278942)))),
            child: BottomNavigationBar(
              currentIndex: index,
              selectedItemColor: const Color(0xFF278942).withAlpha(250),
              unselectedItemColor: const Color(0xFF278942).withAlpha(150),
              showSelectedLabels: true,
              showUnselectedLabels: true,
              type: BottomNavigationBarType.fixed,
              selectedLabelStyle: const TextStyle(color: Color(0xFF278942)),
              onTap: (index) {
                setState(() {
                  this.index = index;
                });
              },
              items: const [
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/hut.png'),
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/bill.png'),
                  ),
                  label: 'Bills',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.group),
                  label: 'Master',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/user-interface.png'),
                  ),
                  label: 'Product',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.more_horiz_outlined),
                  label: 'More',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
