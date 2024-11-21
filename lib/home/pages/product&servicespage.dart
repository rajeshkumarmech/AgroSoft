import 'package:flutter/material.dart';

import '../../Screen/CreateInvoiceScreen/AddProducts/AddProductButtonScreen.dart';
import 'Product/productdetail.dart';

class Productservicespage extends StatelessWidget {
  const Productservicespage({super.key});

  @override
  Widget build(BuildContext context) {
    double oty = 0.00;
    double productamount = 100.0;
    String productname = 'Sample Product';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFAED9BA),
        title: const Text(
          'Product & Services',
          style: TextStyle(
              fontFamily: 'Jost',
              fontSize: 22,
              fontWeight: FontWeight.w500,
              height: 26 / 18),
        ),
        actions: [
          GestureDetector(
            onTap: () => _downloadprocess(context),
            child: const SizedBox(
              height: 25,
              width: 30,
              child: Icon(Icons.more_vert),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              width: 250,
              decoration: BoxDecoration(
                  border: Border.all(width: 0, color: Colors.grey),
                  borderRadius: BorderRadius.circular(15)),
              child: TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    prefixIconColor: Colors.black45,
                    hintText: 'Search by name',
                    hintStyle: TextStyle(
                        color: Colors.black45,
                        fontFamily: 'Jost',
                        fontSize: 19,
                        fontWeight: FontWeight.w400,
                        height: 20 / 14),
                    border: InputBorder.none),
              ),
            ),
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
                      'Dafault',
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Productdetail()));
                },
                child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                      // color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(width: 0, color: Colors.black45),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            height: 20,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Colors.grey.withAlpha(120),
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(25),
                                    bottomLeft: Radius.circular(25))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Qty: ',
                                  style: TextStyle(
                                      fontFamily: 'Jost',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      height: 14 / 10),
                                ),
                                Text(
                                  '$oty',
                                  style: const TextStyle(
                                      fontFamily: 'Jost',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      height: 14 / 10),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                height: 40,
                                width: 30,
                                child:
                                    Image.asset('assets/images/Vector_1.png'),
                              ),
                              Text(
                                productname,
                                style: const TextStyle(
                                    fontFamily: 'Jost',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    height: 23 / 16),
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 40,
                                  ),
                                  const Icon(
                                    Icons.currency_rupee_outlined,
                                    size: 18,
                                  ),
                                  Text(
                                    '$productamount',
                                    style: const TextStyle(
                                        fontFamily: 'Jost',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        height: 23 / 16),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () => _filteredBottomSheet(context),
                  child: const SizedBox(
                    height: 20,
                    width: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.filter_alt_outlined,
                          color: Color(0xFF6F737E),
                          size: 16,
                        ),
                        Text(
                          'Filter',
                          style: TextStyle(
                              color: Color(0xFF6F737E),
                              fontFamily: 'Jost',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              height: 14 / 16),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AddProductButtonScreen()));
                        },
                        child: Container(
                          height: 30,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Color(0xFF278942),
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: const Row(
                            children: [
                              Icon(Icons.add,
                              color: Colors.white,
                              ),
                              Text(
                                'NEW PRODUCT',
                                style: TextStyle(
                                     color: Color.fromARGB(255, 246, 247, 248),
                                  fontFamily: 'Jost',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  height: 14 / 16
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _sortedbottomsheet(BuildContext context) {
    showModalBottomSheet(
        context: context, builder: (context) => const Sortedbottomsheet());
  }

  void _filteredBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context, builder: (context) => const FilteredBottomSheet());
  }

  void _downloadprocess(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) => const DownlodeprocessBottomSheet());
  }
}

class DownlodeprocessBottomSheet extends StatefulWidget {
  const DownlodeprocessBottomSheet({super.key});

  @override
  State<DownlodeprocessBottomSheet> createState() =>
      _DownlodeprocessBottomSheetState();
}

class _DownlodeprocessBottomSheetState
    extends State<DownlodeprocessBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              child: const SizedBox(
                height: 40,
                child: Center(
                  child: Row(
                    children: [
                      Icon(
                        Icons.add,
                        size: 20,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Add Product',
                        style: TextStyle(
                            fontFamily: 'Jost',
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            height: 28 / 20),
                      )
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              child: const SizedBox(
                height: 40,
                child: Row(
                  children: [
                    Icon(
                      Icons.note_add_rounded,
                      size: 20,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Download Low Stock Excel',
                      style: TextStyle(
                          fontFamily: 'Jost',
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          height: 28 / 20),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              child: const SizedBox(
                height: 40,
                child: Row(
                  children: [
                    Icon(
                      Icons.no_backpack,
                      size: 20,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Download Low Stock Pdf',
                      style: TextStyle(
                          fontFamily: 'Jost',
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          height: 28 / 20),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FilteredBottomSheet extends StatefulWidget {
  const FilteredBottomSheet({super.key});

  @override
  State<FilteredBottomSheet> createState() => _FilteredBottomSheetState();
}

class _FilteredBottomSheetState extends State<FilteredBottomSheet> {
  final List<String> _checkboxItems = ["Hide 0 quantity product", "Low Stock"];
  List<bool> selectedItems = List.filled(2, false);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
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
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'FILTER',
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 100,
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
                        fontFamily: 'Jost',
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        height: 26 / 18,
                      ),
                    ),
                    checkColor: Colors.green.shade200,
                    activeColor: Colors.white,
                    // controlAffinity: ListTileControlAffinity.leading,
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 250,
                  decoration: BoxDecoration(
                      color: const Color(0xFF278942),
                      borderRadius: BorderRadius.circular(15)),
                  child: const Center(
                    child: Text(
                      'Done',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            )
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
  String qutlowtohigh = 'default';
  String prodatoz = 'default';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
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
                  'SORT BY',
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Quantity - Low to High',
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    height: 26 / 18,
                  ),
                ),
                Radio(
                  value: 'lowtohigh',
                  groupValue: qutlowtohigh,
                  onChanged: (value) {
                    setState(() {
                      qutlowtohigh = value!;
                    });
                  },
                  activeColor: Colors.green,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Quantity - High to Low',
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    height: 26 / 18,
                  ),
                ),
                Radio(
                  value: 'hightolow',
                  groupValue: qutlowtohigh,
                  onChanged: (value) {
                    setState(() {
                      qutlowtohigh = value!;
                    });
                  },
                  activeColor: Colors.green,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Default',
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    height: 26 / 18,
                  ),
                ),
                Radio(
                  value: 'default',
                  groupValue: qutlowtohigh,
                  onChanged: (value) {
                    setState(() {
                      qutlowtohigh = value!;
                    });
                  },
                  activeColor: Colors.green,
                ),
              ],
            ),
            const Divider(
              height: 4,
              color: Color(0xFFB8B8B8),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Product Name - A to Z',
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    height: 26 / 18,
                  ),
                ),
                Radio(
                  value: 'atoz',
                  groupValue: prodatoz,
                  onChanged: (value) {
                    setState(() {
                      prodatoz = value!;
                    });
                  },
                  activeColor: Colors.green,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Product Name - Z to A',
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    height: 26 / 18,
                  ),
                ),
                Radio(
                  value: 'ztoa',
                  groupValue: prodatoz,
                  onChanged: (value) {
                    setState(() {
                      prodatoz = value!;
                    });
                  },
                  activeColor: Colors.green,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Default',
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    height: 26 / 18,
                  ),
                ),
                Radio(
                  value: 'default',
                  groupValue: prodatoz,
                  onChanged: (value) {
                    setState(() {
                      prodatoz = value!;
                    });
                  },
                  activeColor: Colors.green,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
