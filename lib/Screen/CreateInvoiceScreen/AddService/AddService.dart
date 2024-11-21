import 'package:flutter/material.dart';

import '../AddProducts/AddProductButtonScreen.dart';
import '../AddProducts/Addproduct.dart';

class AddServiceButtonScreen extends StatefulWidget {
  const AddServiceButtonScreen({super.key});

  @override
  State<AddServiceButtonScreen> createState() => _AddServiceButtonScreenState();
}

class _AddServiceButtonScreenState extends State<AddServiceButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffAED9BA),
        title: const Text(
          'Add Service',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const AddProduct()));
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Service Details',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 21,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                height: 450,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 3)]),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const AddProductButtonScreen()));
                            },
                            child: Container(
                              height: 40,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                    color: const Color(0xff278942), width: 2),
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    ' Product',
                                    style: TextStyle(
                                        color: Color(0xff278942),
                                        backgroundColor: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                                color: const Color(0xff278942),
                                borderRadius: BorderRadius.circular(30)),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  ' Service',
                                  style: TextStyle(
                                      color: Colors.white,
                                      backgroundColor: Color(0xff278942),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          hintText: 'Selling Price',
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          focusedBorder: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          hintText: 'Service Name',
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          focusedBorder: OutlineInputBorder(),
                        ),
                      ),
                      const Text(
                        'Invlusive of tax',
                        textAlign: TextAlign.start,
                        style: TextStyle(color: Color(0xff606060)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Flexible(
                        child: Container(
                          height: 55,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.grey)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Center(
                                    child: Text(
                                  'Tax rate %',
                                  style: TextStyle(
                                      color: Color(0xff707070), fontSize: 18),
                                )),
                              ),
                              IconButton(
                                  onPressed: () {
                                    showModalBottomSheet(
                                      context: context,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(25),
                                        ),
                                      ),
                                      builder: (BuildContext context) {
                                        return Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              const Text(
                                                'Add GSTN',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const SizedBox(
                                                height: 30,
                                              ),
                                              const TextField(
                                                decoration: InputDecoration(
                                                  hintText: 'Enter GST Number',
                                                  filled: true,
                                                  fillColor: Color(0xffD9D9D9),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                10)),
                                                    borderSide: BorderSide.none,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 40,
                                              ),
                                              GestureDetector(
                                                onTap: () {},
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 80, left: 80),
                                                  child: Container(
                                                    height: 50,
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                        color: const Color(
                                                            0xff278942),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                    child: const Center(
                                                        child: Text(
                                                      'Save & Update',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 25,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    )),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  icon: const Icon(Icons.keyboard_arrow_down))
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                showModalBottomSheet(
                                  context: context,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(25),
                                    ),
                                  ),
                                  builder: (BuildContext context) {
                                    return Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          const Text(
                                            'Add GSTN',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(
                                            height: 30,
                                          ),
                                          const TextField(
                                            decoration: InputDecoration(
                                              hintText: 'Enter GST Number',
                                              filled: true,
                                              fillColor: Color(0xffD9D9D9),
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide.none,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 40,
                                          ),
                                          GestureDetector(
                                            onTap: () {},
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 80, left: 80),
                                              child: Container(
                                                height: 50,
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                    color:
                                                        const Color(0xff278942),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: const Center(
                                                    child: Text(
                                                  'Save & Update',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 25,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                )),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                              icon: const Icon(
                                Icons.add_box_rounded,
                                color: Color(0xff278942),
                              )),
                          const Text(
                            'Enter GSTIN to add/change Tax',
                            style: TextStyle(
                              color: Color(0xff278942),
                            ),
                          )
                        ],
                      ),
                      Flexible(
                        child: Container(
                          height: 55,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.grey)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Center(
                                    child: Text(
                                  'SAC Code (Optional)',
                                  style: TextStyle(
                                      color: Color(0xff707070), fontSize: 18),
                                )),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.keyboard_arrow_down))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Units',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 21,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 90,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 3)]),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Flexible(
                        child: Container(
                          height: 55,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.grey)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Center(
                                    child: Text(
                                  'Select Units',
                                  style: TextStyle(
                                      color: Color(0xff707070), fontSize: 18),
                                )),
                              ),
                              IconButton(
                                  onPressed: () {
                                    showModalBottomSheet(
                                      context: context,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(25),
                                        ),
                                      ),
                                      builder: (BuildContext context) {
                                        return Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  const Text(
                                                    'Select Category',
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  IconButton(
                                                      onPressed: () {},
                                                      icon: const Icon(Icons
                                                          .cancel_outlined))
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 30,
                                              ),
                                              const TextField(
                                                decoration: InputDecoration(
                                                  hintText:
                                                      'Search Product Units',
                                                  prefixIcon: Icon(
                                                    Icons.search,
                                                    color: Colors.black,
                                                    size: 30,
                                                  ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                                  color: Colors
                                                                      .black),
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          10))),
                                                  focusedBorder:
                                                      OutlineInputBorder(),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  icon: const Icon(Icons.keyboard_arrow_down))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Optional Fields',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 21,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Category',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 21,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      height: 55,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.search,
                                size: 35,
                              ),
                              Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Center(
                                    child: Text(
                                  'Category',
                                  style: TextStyle(
                                      color: Color(0xff707070), fontSize: 18),
                                )),
                              ),
                            ],
                          ),
                          IconButton(
                              onPressed: () {
                                showModalBottomSheet(
                                  context: context,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(25),
                                    ),
                                  ),
                                  builder: (BuildContext context) {
                                    return Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          const Text(
                                            'Select Category',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          const TextField(
                                            decoration: InputDecoration(
                                              hintText: 'Description',
                                              prefixIcon: Icon(
                                                Icons.search,
                                                color: Color(0xffC8C8C8),
                                                size: 30,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.grey),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10))),
                                              focusedBorder:
                                                  OutlineInputBorder(),
                                            ),
                                          ),
                                          const Center(
                                            child: Image(
                                              image: AssetImage(
                                                  'assets/OBJECTS.png'),
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 40,
                                          ),
                                          const Center(
                                            child: Text(
                                              'No Category Found',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          GestureDetector(
                                            onTap: () {},
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 80, left: 80),
                                              child: Container(
                                                height: 50,
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                    color:
                                                        const Color(0xff278942),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: const Center(
                                                    child: Text(
                                                  'Add Category',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 25,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                )),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                              icon: const Icon(Icons.keyboard_arrow_down))
                        ],
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Description',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 21,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      height: 55,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.search,
                                size: 35,
                              ),
                              Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Center(
                                    child: Text(
                                  'Description',
                                  style: TextStyle(
                                      color: Color(0xff707070), fontSize: 18),
                                )),
                              ),
                            ],
                          ),
                          IconButton(
                              onPressed: () {
                                showModalBottomSheet(
                                  context: context,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(25),
                                    ),
                                  ),
                                  builder: (BuildContext context) {
                                    return Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          const Text(
                                            'Add Product Description',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          const TextField(
                                            decoration: InputDecoration(
                                              hintText: 'Description',
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.grey),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10))),
                                              focusedBorder:
                                                  OutlineInputBorder(),
                                            ),
                                            maxLines: 5,
                                          ),
                                          const SizedBox(
                                            height: 40,
                                          ),
                                          GestureDetector(
                                            onTap: () {},
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 80, left: 80),
                                              child: Container(
                                                height: 50,
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                    color:
                                                        const Color(0xff278942),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: const Center(
                                                    child: Text(
                                                  'Add Product',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 25,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                )),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                              icon: const Icon(Icons.keyboard_arrow_down))
                        ],
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
                child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(25),
                    ),
                  ),
                  builder: (BuildContext context) {
                    return SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              'More Details',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Discount(%)',
                                      enabledBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.grey),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8))),
                                      focusedBorder: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Flexible(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: '0.0',
                                      enabledBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.grey),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8))),
                                      focusedBorder: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const TextField(
                              decoration: InputDecoration(
                                hintText: 'Cess %',
                                suffixIcon:
                                    Icon(Icons.keyboard_arrow_down_sharp),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                                focusedBorder: OutlineInputBorder(),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const TextField(
                              decoration: InputDecoration(
                                hintText: 'Low Stock Alert at',
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                                focusedBorder: OutlineInputBorder(),
                              ),
                            ),
                            const Text(
                              'You will be notified once the stock reaches the minimum stock qty. (BETA)',
                              style: TextStyle(color: Color(0xff808080)),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Row(
                              children: [
                                Text(
                                  'Opening Stock',
                                  style: TextStyle(
                                      color: Color(0xff278942),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Optional',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const TextField(
                              decoration: InputDecoration(
                                hintText: 'Opening Quantity',
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                                focusedBorder: OutlineInputBorder(),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const TextField(
                              decoration: InputDecoration(
                                hintText:
                                    'Opening Purchase Price (per unit with tax',
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                focusedBorder: OutlineInputBorder(),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const TextField(
                              decoration: InputDecoration(
                                hintText: 'Opening Stock Value (with tax)',
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                                focusedBorder: OutlineInputBorder(),
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(right: 80, left: 80),
                                child: Container(
                                  height: 50,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: const Color(0xff278942),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: const Center(
                                      child: Text(
                                    'Add Product',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.w500),
                                  )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: const Text(
                '... Add more details',
                style: TextStyle(color: Color(0xff666666), fontSize: 18),
              ),
            )),
            const SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(right: 80, left: 80),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color(0xff278942),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                      child: Text(
                    'Add Service',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                  )),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
