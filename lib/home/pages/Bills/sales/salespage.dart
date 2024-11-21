import 'package:agrosoft/home/pages/Bills/sales/paidfunction_sales.dart';
import 'package:flutter/material.dart';

import '../transaction_search.dart';

class SalespageView  extends StatelessWidget {
  const SalespageView({super.key});
  @override
  Widget build(BuildContext context) {
    int tamount = 9452;
    int paidamount = 2861;
    int penamount = 82584;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            Container(
              height: 20,
              width: size.width,
              decoration: const BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26, blurRadius: 5, spreadRadius: 2)
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: size.height * 0.18,
                width: size.width / 0.8,

                decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 3,
                          spreadRadius: 2,
                          color: const Color.fromARGB(135, 100, 98, 98)
                              .withAlpha(100))
                    ]),
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  const Text(
                                    'Total Amount',
                                    style: TextStyle(
                                      fontFamily: 'Jost',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17,
                                      height: 20 / 18,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Container(
                                    height: 35,
                                    width: 120,
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 5),
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                                255, 210, 250, 221)
                                            .withAlpha(150),
                                        borderRadius: BorderRadius.circular(15),
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 3,
                                              spreadRadius: 0.5,
                                              color:
                                                  Colors.black12.withAlpha(100))
                                        ]),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          Icons.currency_rupee_outlined,
                                          size: 20,
                                        ),
                                        Text(
                                          '$tamount',
                                          style: const TextStyle(
                                            fontFamily: 'Jost',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20,
                                            height: 20 / 20,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )),
                          Expanded(
                              flex: 1,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  const Text(
                                    'Pending',
                                    style: TextStyle(
                                      fontFamily: 'Jost',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      height: 20 / 18,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Container(
                                    height: 35,
                                    width: 120,
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 5),
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                                255, 210, 250, 221)
                                            .withAlpha(150),
                                        borderRadius: BorderRadius.circular(15),
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 3,
                                              spreadRadius: 0.5,
                                              color:
                                                  Colors.black12.withAlpha(100))
                                        ]),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          Icons.currency_rupee_outlined,
                                          size: 20,
                                        ),
                                        Text(
                                          '$penamount',
                                          style: const TextStyle(
                                            fontFamily: 'Jost',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20,
                                            height: 20 / 20,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )),
                          Expanded(
                              flex: 1,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  const Text(
                                    'Paid',
                                    style: TextStyle(
                                      fontFamily: 'Jost',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      height: 20 / 18,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Container(
                                    height: 35,
                                    width: 120,
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 5),
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                                255, 210, 250, 221)
                                            .withAlpha(150),
                                        borderRadius: BorderRadius.circular(15),
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 3,
                                              spreadRadius: 0.5,
                                              color:
                                                  Colors.black12.withAlpha(100))
                                        ]),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          Icons.currency_rupee_outlined,
                                          size: 20,
                                        ),
                                        Text(
                                          '$paidamount',
                                          style: const TextStyle(
                                            fontFamily: 'Jost',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20,
                                            height: 20 / 20,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )),
                        ],
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () => _datefilterbottomsheet(context),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'This Year',
                                        style: TextStyle(
                                            fontFamily: 'Jost',
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            height: 20 / 14),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_down_outlined,
                                        size: 18,
                                      )
                                    ],
                                  ),
                                  Text(
                                    '(01/01/2024 - 31/12/2024)',
                                    style: TextStyle(
                                        color: Color(0xFF8D8D8D),
                                        fontFamily: 'Jost',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        height: 15 / 12),
                                  )
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const SizedBox(
                                  width: 80,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(MaterialPageRoute(
                                        builder: (context) =>
                                            const TransactionSearch()));
                                  },
                                  child: const SizedBox(
                                    height: 25,
                                    width: 70,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.search,
                                          size: 15,
                                          color: Color(0xFF8D8D8D),
                                        ),
                                        Text('Search',
                                            style: TextStyle(
                                                color: Color(0xFF8D8D8D),
                                                fontFamily: 'Jost',
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                height: 20 / 12))
                                      ],
                                    ),
                                  ),
                                ),
                                // const SizedBox(
                                //   width: 15,
                                // ),
                                GestureDetector(
                                  onTap: () => _filteredBottomSheet(context),
                                  child: const SizedBox(
                                    height: 25,
                                    width: 25,
                                    child: Icon(
                                      Icons.filter_alt_outlined,
                                      size: 15,
                                      color: Color(0xFF8D8D8D),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const PaidfunctionSales(),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    GestureDetector(
                      onTap: () => _sortedbottomsheet(context),
                      child: SizedBox(
                        height: 20,
                        width: 45,
                        child: Row(
                          children: [
                            Text(
                              'Sort',
                              style: TextStyle(
                                  fontFamily: 'Jost',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  height: 14 / 14,
                                  color:
                                      const Color(0xFF000000).withAlpha(120)),
                            ),
                            ImageIcon(
                              const AssetImage('assets/images/bar-chart.png'),
                              color: const Color(0xFF000000).withAlpha(120),
                              size: 14,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: const Color(0xFF000000).withAlpha(120),
                      size: 14,
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: const Color(0xFF000000).withAlpha(120),
                      size: 14,
                    ),
                    Text(
                      'Default',
                      style: TextStyle(
                          fontFamily: 'Jost',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          height: 14 / 14,
                          color: const Color(0xFF000000).withAlpha(120)),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                  ],
                ),
              ],
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: size.width / 1.6,
                    width: size.width / 1.5,
                    child: Image.asset(
                      'assets/images/Group 2643.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Text(
                    'Create new Invoice',
                    style: TextStyle(
                        fontFamily: 'Jost',
                        fontWeight: FontWeight.w600,
                        fontSize: 28,
                        height: 14 / 20),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                          color: const Color(0xFF278942).withAlpha(180),
                          borderRadius: BorderRadius.circular(25)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 26,
                          ),
                          Text(
                            'INVOICE',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                height: 20 / 16),
                          ),
                          SizedBox(
                            width: 8,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _filteredBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context, builder: (context) => const FilteredBottomSheet());
  }

  _sortedbottomsheet(BuildContext context) {
    showModalBottomSheet(
        context: context, builder: (context) => const Sortedbottomsheet());
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

class FilteredBottomSheet extends StatefulWidget {
  const FilteredBottomSheet({super.key});

  @override
  State<FilteredBottomSheet> createState() => _FilteredBottomSheetState();
}

class _FilteredBottomSheetState extends State<FilteredBottomSheet> {
  final List<String> _checkboxItems = [
    "Cash",
    "Card",
    "Net Banking",
    "UPI",
    "Cheque",
    "EMI"
  ];
  List<bool> selectedItems = List.filled(6, false);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'FILTER INVOICE BY',
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Done',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF278942),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 350,
              child: ListView.builder(
                itemCount: _checkboxItems.length,
                itemBuilder: (context, index) {
                  String item = _checkboxItems[index];
                  bool isChecked = selectedItems[index];
                  return CheckboxListTile(
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        selectedItems[index] = value!;
                      });
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2.0),
                    ),
                    side: WidgetStateBorderSide.resolveWith(
                      (states) =>
                          BorderSide(width: 1.5, color: Colors.green.shade400),
                    ),
                    title: Text(
                      item,
                      style: const TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          height: 22 / 18),
                    ),
                    checkColor: Colors.green.shade200,
                    activeColor: Colors.white,
                    // controlAffinity: ListTileControlAffinity.leading,
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


class Sortedbottomsheet extends StatefulWidget {
  const Sortedbottomsheet({super.key});

  @override
  State<Sortedbottomsheet> createState() => _SortedbottomsheetState();
}

class _SortedbottomsheetState extends State<Sortedbottomsheet> {
  String groupValue = 'Total Amount';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'SORT INVOICE BY',
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Done',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF278942),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Radio(
                  value: 'Total Amount',
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value!;
                    });
                  },
                  activeColor: Colors.green,
                ),
                const Text(
                  'Total Amount',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    height: 24 / 20,
                  ),
                )
              ],
            ),
            Row(
              children: [
                Radio(
                  value: 'Due Date',
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value!;
                    });
                  },
                  activeColor: Colors.green,
                ),
                const Text(
                  'Due Date',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    height: 24 / 20,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
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



