import 'package:agrosoft/home/pages/salespage.dart';
import 'package:flutter/material.dart';
import '../../Screen/Transaction/TransactionMainPage.dart';
import '../../Screen/purchase.new/Purchase Invoice/purchase.dart';
import '../../Screen/purchase.new/purchase_page.dart';
import '../../Screen/purchase.new/Purchase Invoice/purchase_view.dart';
import '../../Screen/reports.new/customer_reports/customer_reports.dart';
import '../../Screen/stock/stock_transfer_view/stock_transfer.dart';
import '../compountes/home_compountes/create_items.dart';
import '../compountes/home_compountes/quickacess_items.dart';
import 'PriceList/price_list.dart';
import 'billpage.dart';
import 'cash&banking/cash&banking.dart';
import 'image_slide.dart';
import 'opening_transaction/opening_transaction_pg.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double sales = 30570.05;
    double purchase = 954232.87;
    List<Widget> createItemslist = [
      CreateItems(
        color: const Color(0xFFFF3636).withAlpha(120),
        imagePath: 'assets/images/sales.png',
        name: 'Sales',
        function: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Salespage()));
        },
      ),
      CreateItems(
        color: const Color(0xFF498A5B).withAlpha(120),
        imagePath: 'assets/images/shopping-cart.png',
        name: 'Purchase',
        function: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PurchasePage()));
        },
      ),
      CreateItems(
        color: const Color(0xFFFF9D67).withAlpha(120),
        imagePath: 'assets/images/transaction.png',
        name: 'Transaction',
        function: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const TransactionDetails()));

        },
      ),
      CreateItems(
        color: const Color(0xFF897FFF).withAlpha(100),
        imagePath: 'assets/images/credit-card.png',
        name: 'Cash & Banking',
        function: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Cashbanking()));
        },
      ),
      CreateItems(
        color: const Color.fromARGB(0, 250, 191, 14).withAlpha(100),
        imagePath: 'assets/images/opening-transaction.png',
        name: 'Opening Transaction',
        function: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>OpeningTransactionPg()));

        },
      ),
      CreateItems(
        color: const Color(0xFFAFDFFF).withAlpha(120),
        imagePath: 'assets/images/stock.png',
        name: 'Stock',
        function: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>StockTransfer()));
        },
      ),
    ];

    List<Widget> quickacessItemslist = [
      QuickacessItems(
        color: const Color(0xFFFF0000).withAlpha(110),
        imagepath: 'assets/images/shipping-truck.png',
        name: 'E-way Bill',
        function: () {},
      ),
      QuickacessItems(
        color: const Color(0xFFFF9D67).withAlpha(110),
        imagepath: 'assets/images/Align-1.png',
        name: 'Price List',
        function: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const PriceList()));
        },
      ),
      QuickacessItems(
        color: const Color(0xFF0FA15B).withAlpha(110),
        imagepath: 'assets/images/clock.png',
        name: 'Payment Timeline',
        function: () {},
      ),
      QuickacessItems(
        color: const Color(0xFF4A65FC).withAlpha(60),
        imagepath: 'assets/images/solar.png',
        name: 'Document Setting',
        function: () {},
      ),
      QuickacessItems(
        color: const Color(0xFFA34AFC).withAlpha(110),
        imagepath: 'assets/images/clock.png',
        name: 'Reports',
        function: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const customer_report()));
        },
      ),
      QuickacessItems(
        color: const Color(0xFF000000).withAlpha(110),
        imagepath: 'assets/images/support_agent.png',
        name: 'Help',
        function: () {},
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            appbarUI(),
            const SizedBox(
              height: 5,
            ),
            const ImageSlide(),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: ()=>_datefilterbottomsheet(context),
                  child: const SizedBox(
                    width: 130,
                    child:  Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only( left: 15),
                          child: Text(
                            'This Year',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                height: 23.12 / 12,
                                fontFamily: 'Jost'),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          width: 30,
                          child: Center(
                            child: Icon(
                              Icons.keyboard_arrow_down_outlined,
                              size: 25,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 160,
              width: w,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      width: w / 2.5,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              spreadRadius: 0,
                              blurRadius: 2,
                              offset: Offset(1, 1),
                            )
                          ]),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            'Sales',
                            style: TextStyle(
                              fontFamily: 'Jost',
                              fontSize: 23,
                              fontWeight: FontWeight.w400,
                              height: 35 / 22,
                              textBaseline: TextBaseline.alphabetic,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.currency_rupee_outlined,
                                size: 24,
                                weight: 20,
                              ),
                              Text(
                                '$sales',
                                style: const TextStyle(
                                  fontFamily: 'Jost',
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                  height: 34.68 / 24,
                                  textBaseline: TextBaseline.alphabetic,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      width: w / 2.5,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              spreadRadius: 0,
                              blurRadius: 2,
                              offset: Offset(1, 1),
                            )
                          ]),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            'Purchase',
                            style: TextStyle(
                              fontFamily: 'Jost',
                              fontSize: 23,
                              fontWeight: FontWeight.w400,
                              height: 35 / 22,
                              textBaseline: TextBaseline.alphabetic,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.currency_rupee_outlined,
                                size: 24,
                                weight: 20,
                              ),
                              Text(
                                '$purchase  ',
                                style: const TextStyle(
                                  fontFamily: 'Jost',
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                  height: 34.68 / 24,
                                  textBaseline: TextBaseline.alphabetic,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Create',
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    height: 20.23 / 12,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(66, 148, 146, 146),
                          spreadRadius: 0,
                          blurRadius: 2,
                          offset: Offset(0.5, 0.5),
                        )
                      ]),
                  child: Center(
                    child: Image.asset(
                      'assets/images/play-button.png',
                      height: 15,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 230,
              child: GridView.builder(
                  itemCount: createItemslist.length,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 20,
                      mainAxisExtent: 120),
                  itemBuilder: (context, index) {
                    return createItemslist[index];
                  }),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Quick Access',
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    height: 20.23 / 12,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 150,
              child: GridView.builder(
                  itemCount: createItemslist.length,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 1,
                      mainAxisExtent: 130),
                  itemBuilder: (context, index) {
                    return quickacessItemslist[index];
                  }),
            ),
            const SizedBox(
              height: 15,
            ),
            const SizedBox(
              height: 5,
            ),

          ],
        ),
      ),
    );
  }

  Row appbarUI() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const SizedBox(
              width: 4,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    // boxShadow: const [
                    //   BoxShadow(
                    //     color: Color.fromARGB(66, 121, 116, 116),
                    //     spreadRadius: 0,
                    //     blurRadius: 1,
                    //   )
                    // ]
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/images/menus.png',
                      height: 30,
                      width: 30,
                    ),
                  )),
            ),
          ],
        ),
        Row(
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    // boxShadow: const [
                    //   BoxShadow(
                    //     color: Color.fromARGB(66, 87, 83, 83),
                    //     spreadRadius: 0,
                    //     blurRadius: 2,
                    //   )
                    // ]
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/images/bell.png',
                      height: 30,
                      width: 30,
                    ),
                  )),
            ),
            const SizedBox(
              width: 4,
            )
          ],
        ),
      ],
    );
  }
  void _datefilterbottomsheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return DraggableScrollableSheet(
          expand: false,
          maxChildSize: 0.8,
          builder: (BuildContext context, ScrollController scrollController) {
            return Datefilterbottomsheet(scrollController: scrollController);
          },
        );
      },
    );
  }
}


class Datefilterbottomsheet extends StatefulWidget {
  final ScrollController scrollController;

  const Datefilterbottomsheet({super.key, required this.scrollController});

  @override
  State<Datefilterbottomsheet> createState() => _DatefilterbottomsheetState();
}

class _DatefilterbottomsheetState extends State<Datefilterbottomsheet> {
  String year = 'This Month';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        child: ListView(
          controller: widget.scrollController,
          children: [
            const Text(
              'Date Filter',
              style: TextStyle(
                  fontFamily: 'Jost',
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  height: 24 / 20),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                _radiobuttons('FY 23-24', 'FY 23-24'),
                _radiobuttons('FY 22-23', 'FY 22-23'),
                Row(
                  children: [
                    Radio(
                      value: 'Today',
                      groupValue: year,
                      onChanged: (value) {
                        setState(() {
                          year = value!;
                        });
                      },
                      activeColor: Colors.green,
                    ),
                    Text(
                      'Today',
                      style: TextStyle(
                        color: const Color(0xFF263238).withAlpha(150),
                        fontFamily: 'Jost',
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        height: 24 / 20,
                      ),
                    ),
                    Text(
                      '(Default)',
                      style: TextStyle(
                        color: const Color(0xFF278942).withAlpha(150),
                        fontFamily: 'Jost',
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        height: 24 / 20,
                      ),
                    )
                  ],
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      '(01-01-2024 - 31-12-2024)',
                      style: TextStyle(
                          fontFamily: 'Jost',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          height: 20 / 16,
                          color: Color(0xFF8D8D8D)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                _radiobuttons('Yesterday', 'Yesterday'),
                _radiobuttons('This Week', 'This Week'),
                _radiobuttons('Last Week', 'Last Week'),
                _radiobuttons('This Month', 'This Month(Default)'),
                _radiobuttons('Last Month', 'Last Month'),
                _radiobuttons('This Year', 'This Year'),
                _radiobuttons('Last Year', 'Last Year'),
                _radiobuttons('Last Quarter', 'Last Quarter'),
                _radiobuttons('Custom', 'Custom'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                            color: const Color(0xFF278942),
                            borderRadius: BorderRadius.circular(15)),
                        child: const Center(
                          child: Text(
                            'Save',
                            style: TextStyle(
                                fontFamily: 'Jost',
                                fontWeight: FontWeight.w500,
                                fontSize: 24,
                                height: 34 / 24,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _radiobuttons(String value, String text) {
    return Row(
      children: [
        Radio(
          value: value,
          groupValue: year,
          onChanged: (value) {
            setState(() {
              year = value!;
            });
          },
          activeColor: Colors.green,
        ),
        Text(
          text,
          style: TextStyle(
            color: const Color(0xFF263238).withAlpha(150),
            fontFamily: 'Jost',
            fontSize: 20,
            fontWeight: FontWeight.w500,
            height: 24 / 20,
          ),
        )
      ],
    );
  }
}
