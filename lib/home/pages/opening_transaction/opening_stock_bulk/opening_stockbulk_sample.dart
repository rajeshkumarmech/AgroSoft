import 'package:flutter/material.dart';

class OpeningStockbulkSample extends StatelessWidget {
  const OpeningStockbulkSample({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String productname = 'Sampel Ledger';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFAED9BA),
        title: Text(
          productname,
          style: const TextStyle(
              fontFamily: 'Jost',
              fontSize: 22,
              fontWeight: FontWeight.w500,
              height: 26 / 18),
        ),
        actions: [
          GestureDetector(
            child: const SizedBox(
              height: 25,
              width: 30,
              child: Icon(Icons.note_add_rounded),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          GestureDetector(
            onTap: () => _productprocessbottomsheet(context),
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Product Details',
                style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    height: 26 / 18),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: size.height / 1.50,
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 0, color: Colors.black26),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      children: [
                        Text(
                          'Product Name*',
                          style: TextStyle(
                            fontFamily: 'Jost',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            height: 17 / 12,
                            color: Color(0xFF999999),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Online',
                          style: TextStyle(
                            fontFamily: 'Jost',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            height: 17 / 12,
                            color: Color(0xFF68F18E),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      productname,
                      style: const TextStyle(
                          fontFamily: 'Jost',
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          height: 26 / 18),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    _details("ID", "1"),
                    _details("Date", "2023-10-20"),
                    _details("Product Name", "Fastest 10 GMS"),
                    _details("Batch/Lot", "A24"),
                    _details("Quantity", "20"),
                    _details("Stock Location", "Singanallur"),
                    _details("Reference", "TB Minarals"),



                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 50,
                    width: 70,
                    // color: Colors.green,
                    child: ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent
                        ),
                        child:Icon(Icons.edit,color: Colors.white,)),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox _details(String name, String val) {
    return SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: const TextStyle(
                fontFamily: 'Jost',
                fontSize: 20,
                fontWeight: FontWeight.w500,
                height: 26 / 18),
          ),
          Text(
            val,
            style: const TextStyle(
                fontFamily: 'Jost',
                fontSize: 20,
                fontWeight: FontWeight.w500,
                height: 26 / 18),
          )
        ],
      ),
    );
  }

  void _productprocessbottomsheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => const ProductProcessBottomsheet(),
    );
  }
}


class ProductProcessBottomsheet extends StatefulWidget {
  const ProductProcessBottomsheet({super.key});

  @override
  State<ProductProcessBottomsheet> createState() =>
      _ProductProcessBottomsheetState();
}

class _ProductProcessBottomsheetState extends State<ProductProcessBottomsheet> {
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
      height: 180,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              child: const SizedBox(
                height: 40,
                child: Center(
                  child: Row(
                    children: [
                      Icon(
                        Icons.share,
                        size: 20,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Share',
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
                      Icons.add_circle,
                      size: 20,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Add Variant',
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
                      Icons.punch_clock_sharp,
                      size: 20,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'See Timeline',
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
              onTap: () => _showdialogbox(context),
              child: const SizedBox(
                height: 40,
                child: Row(
                  children: [
                    Icon(
                      Icons.delete,
                      size: 20,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Delete Product',
                      style: TextStyle(
                          fontFamily: 'Jost',
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.red,
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

  _showdialogbox(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          actions: [
            GestureDetector(
              child: Container(
                height: 40,
                width: 80,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15)),
                child: const Center(
                  child: Text(
                    'Yes',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Jost',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        height: 20 / 16),
                  ),
                ),
              ),
            ),
            GestureDetector(
              child: Container(
                height: 40,
                width: 80,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: const Color.fromARGB(255, 250, 247, 247),
                    borderRadius: BorderRadius.circular(15)),
                child: const Center(
                  child: Text(
                    'No',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Jost',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        height: 20 / 16),
                  ),
                ),
              ),
            ),
          ],
          title: const Text(
            'Are you sure you want to delete this Product ? ',
            style: TextStyle(
                fontFamily: 'Jost',
                fontSize: 18,
                fontWeight: FontWeight.w500,
                height: 26 / 18),
          ),
        ));
  }
}
