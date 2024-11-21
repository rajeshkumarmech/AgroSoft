import 'package:flutter/material.dart';

class Productdetail extends StatelessWidget {
  const Productdetail({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String productname = 'Sampel Product';
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
              height: size.height / 1.4,
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
                  _details("Selling Price", "100."),
                  _details("Tax Rate", "0.0%"),
                  _details("Purchase Price", "0.00"),
                  _details("Quantity", "0.00"),
                  _details("Unit", "OTH"),
                  _details("Category", "ADD"),
                  _details("HSN/SAC Code", "ADD"),
                  _details("Type", "Product"),
                  _details("Barcode", "00000000"),
                  SizedBox(
                    height: 80,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Product Description",
                          style: TextStyle(
                              fontFamily: 'Jost',
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              height: 26 / 18),
                        ),
                        SizedBox(
                          height: 50,
                          width: 250,
                          child: RichText(
                            text: const TextSpan(
                              style: TextStyle(
                                  color: Color(0xFF999999),
                                  fontFamily: 'Jost',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  height: 17 / 12),
                              children: [
                                TextSpan(
                                    text:
                                        'Create your first invoice with ease using our sample product')
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => _stockoutbottomsheet(context),
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE44343),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                      child: Text(
                        'STOCK OUT',
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
                  onTap: () => _stockinbottomsheet(context),
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      color: const Color(0xFF278942),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                      child: Text(
                        'STOCK IN',
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
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container _details(String name, String val) {
    return Container(
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

  void _stockinbottomsheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return DraggableScrollableSheet(
          expand: false,
          maxChildSize: 0.6,
          builder: (BuildContext context, ScrollController scrollController) {
            return StockIN(scrollController: scrollController);
          },
        );
      },
    );
  }

  void _stockoutbottomsheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return DraggableScrollableSheet(
          expand: false,
          maxChildSize: 0.6,
          builder: (BuildContext context, ScrollController scrollController) {
            return StockOut(scrollController: scrollController);
          },
        );
      },
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

class StockIN extends StatefulWidget {
  final ScrollController scrollController;
  const StockIN({super.key, required this.scrollController});

  @override
  State<StockIN> createState() => _StockINState();
}

class _StockINState extends State<StockIN> {
  TextEditingController _datecontroller = TextEditingController();

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
              'Stock In',
              style: TextStyle(
                fontFamily: 'Jost',
                fontSize: 30,
                fontWeight: FontWeight.w500,
                height: 43 / 30,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
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
                    color: Color.fromARGB(255, 13, 13, 14),
                    width: 0,
                  ),
                ),
                hintText: "Enter Quantity",
                hintStyle: const TextStyle(
                  color: Color.fromARGB(255, 221, 217, 217),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              style: const TextStyle(color: Color.fromARGB(255, 8, 8, 8)),
              decoration: InputDecoration(
                labelStyle: const TextStyle(color: Colors.white),
                focusColor: Colors.black,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                      color: Color.fromARGB(255, 177, 174, 174), width: 0),
                ),
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Color.fromARGB(255, 243, 244, 250),
                    width: 0,
                  ),
                ),
                hintText: "Purchase Price",
                hintStyle: const TextStyle(
                  color: Color.fromARGB(255, 221, 217, 217),
                ),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Row(
              children: [
                SizedBox(
                  height: 35,
                  width: 320,
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        color: Color(0xFF999999),
                        fontFamily: 'Jost',
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        height: 17 / 15,
                      ),
                      children: [
                        TextSpan(
                          text:
                              'Enter Purchase Price for the quantity removed form the stock. This will reflect in the average sale price of the product',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              style: const TextStyle(color: Color.fromARGB(255, 10, 10, 10)),
              decoration: InputDecoration(
                labelStyle: const TextStyle(color: Colors.white),
                focusColor: Colors.black,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                      color: Color.fromARGB(255, 177, 174, 174), width: 0),
                ),
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Color.fromARGB(255, 5, 5, 5),
                    width: 0,
                  ),
                ),
                hintText: "Stock Out Value",
                hintStyle: const TextStyle(
                  color: Color.fromARGB(255, 221, 217, 217),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 80,
              child: TextFormField(
                keyboardType: TextInputType.name,
                expands: true,
                maxLines: null,
                style: const TextStyle(color: Color.fromARGB(255, 14, 12, 12)),
                decoration: InputDecoration(
                  labelStyle: const TextStyle(color: Colors.white),
                  focusColor: Colors.black,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 177, 174, 174), width: 0),
                  ),
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 0,
                    ),
                  ),
                  hintText: "Enter Remarks",
                  hintStyle: const TextStyle(
                    color: Color.fromARGB(255, 221, 217, 217),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Select Date',
              style: TextStyle(
                fontFamily: 'Jost',
                fontWeight: FontWeight.w400,
                fontSize: 16,
                height: 20 / 16,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              readOnly: true,
              onTap: _selectdate,
              controller: _datecontroller,
              style: const TextStyle(color: Color.fromARGB(255, 10, 10, 10)),
              decoration: InputDecoration(
                labelStyle: const TextStyle(color: Colors.white),
                suffixIcon: const Icon(Icons.calendar_month_outlined),
                focusColor: Colors.black,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                      color: Color.fromARGB(255, 177, 174, 174), width: 0),
                ),
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Color.fromARGB(255, 83, 81, 81),
                    width: 0,
                  ),
                ),
                hintText: "Date",
                hintStyle: const TextStyle(
                  color: Color.fromARGB(255, 221, 217, 217),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                    color: const Color(0xFF278942),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'STOCK IN',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Jost',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            height: 20 / 16,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 16,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _selectdate() async {
    DateTime? _datepicked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (_datepicked != null) {
      setState(() {
        _datecontroller.text = _datepicked.toString().split(" ")[0];
      });
    }
  }
}

class StockOut extends StatefulWidget {
  final ScrollController scrollController;
  const StockOut({super.key, required this.scrollController});

  @override
  State<StockOut> createState() => _StockOutState();
}

class _StockOutState extends State<StockOut> {
  TextEditingController _datecontroller = TextEditingController();

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
              'Stock Out',
              style: TextStyle(
                fontFamily: 'Jost',
                fontSize: 30,
                fontWeight: FontWeight.w500,
                height: 43 / 30,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
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
                    color: Color.fromARGB(255, 13, 13, 14),
                    width: 0,
                  ),
                ),
                hintText: "Enter Quantity",
                hintStyle: const TextStyle(
                  color: Color.fromARGB(255, 221, 217, 217),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
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
                    color: Color.fromARGB(255, 13, 13, 14),
                    width: 0,
                  ),
                ),
                hintText: "Selling Price",
                hintStyle: const TextStyle(
                  color: Color.fromARGB(255, 221, 217, 217),
                ),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Row(
              children: [
                SizedBox(
                  height: 35,
                  width: 320,
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        color: Color(0xFF999999),
                        fontFamily: 'Jost',
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        height: 17 / 15,
                      ),
                      children: [
                        TextSpan(
                          text:
                              'Enter Sold Price for the quantity removed form the stock. This will reflect in the average sale price of the product',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            TextFormField(
              keyboardType: TextInputType.number,
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
                    color: Color.fromARGB(255, 13, 13, 14),
                    width: 0,
                  ),
                ),
                hintText: "Stock Out Value",
                hintStyle: const TextStyle(
                  color: Color.fromARGB(255, 221, 217, 217),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 80,
              child: TextFormField(
                keyboardType: TextInputType.name,
                expands: true,
                maxLines: null,
                style: const TextStyle(color: Color.fromARGB(255, 14, 12, 12)),
                decoration: InputDecoration(
                  labelStyle: const TextStyle(color: Colors.white),
                  focusColor: Colors.black,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 177, 174, 174), width: 0),
                  ),
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 0,
                    ),
                  ),
                  hintText: "Enter Remarks",
                  hintStyle: const TextStyle(
                    color: Color.fromARGB(255, 221, 217, 217),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Select Date',
              style: TextStyle(
                fontFamily: 'Jost',
                fontWeight: FontWeight.w400,
                fontSize: 16,
                height: 20 / 16,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              readOnly: true,
              onTap: _selectdate,
              controller: _datecontroller,
              style: const TextStyle(color: Color.fromARGB(255, 10, 10, 10)),
              decoration: InputDecoration(
                labelStyle: const TextStyle(color: Colors.white),
                suffixIcon: const Icon(Icons.calendar_month_outlined),
                focusColor: Colors.black,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                      color: Color.fromARGB(255, 177, 174, 174), width: 0),
                ),
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Color.fromARGB(255, 83, 81, 81),
                    width: 0,
                  ),
                ),
                hintText: "Date",
                hintStyle: const TextStyle(
                  color: Color.fromARGB(255, 221, 217, 217),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE44343),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'STOCK OUT',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Jost',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            height: 20 / 16,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 16,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _selectdate() async {
    DateTime? _datepicked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (_datepicked != null) {
      setState(() {
        _datecontroller.text = _datepicked.toString().split(" ")[0];
      });
    }
  }
}
