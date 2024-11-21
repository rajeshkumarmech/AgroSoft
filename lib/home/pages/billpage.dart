import 'package:agrosoft/home/pages/salespage.dart';
import 'package:agrosoft/home/pages/tabitem.dart';
import 'package:flutter/material.dart';

import 'Bills/purchases/purchasespage.dart';
import 'Bills/quatations/quatationpage.dart';
import 'Bills/sales/salespage.dart';

class Billpage extends StatelessWidget {
  const Billpage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFFFFFFFF),
              bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Container(
                      height: 45,
                      margin: const EdgeInsets.symmetric(horizontal: 19),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: const Color(0xFF278942).withAlpha(110)),
                      child: const TabBar(
                        // indicatorSize: TabBarIndicatorSize.tab,
                        // labelColor: Colors.white,
                        // unselectedLabelColor: Colors.black54,
                        dividerColor: Colors.transparent,
                        indicator: UnderlineTabIndicator(
                          borderRadius: BorderRadius.all(Radius.circular(45)),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2.5,
                            style: BorderStyle.solid
                          ),
                          insets: EdgeInsets.only(
                            top: 0,
                            right: 62,
                            left: 10,
                            bottom: 10
                          )
                        ),
                        tabs: [
                          Tabitem(titile: 'Sales   '),
                          Tabitem(titile: 'Purchases'),
                          Tabitem(titile: 'Quotations')
                        ],
                      ),
                    ),
                  ))),
          body: const TabBarView(
            children: [
              SalespageView(),
              Purchasespage(),
              Quatationpage()
            ],
          ),
        ));
  }
}
