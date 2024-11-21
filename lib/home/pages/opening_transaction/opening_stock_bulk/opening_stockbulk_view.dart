import 'package:flutter/material.dart';

import '../../../../Screen/purchase.new/Purchase Invoice/purchase.dart';
import '../../sales/DirectDelivery/add_direct_delivery.dart';
import 'opening_stockbulk_sample.dart';

class OpeningStockbulkView extends StatefulWidget {
  const OpeningStockbulkView({super.key});

  @override
  State<OpeningStockbulkView> createState() => _OpeningStockbulkViewState();
}

class _OpeningStockbulkViewState extends State<OpeningStockbulkView> {
  TextEditingController datecontroller = TextEditingController();
  // TextEditingController goodsandServices = TextEditingController();


  @override
  Widget build(BuildContext context) {
    List<Widget> goodsandServiceslist = [const GoodsServices()];

    TextEditingController search = TextEditingController();
    Size size = MediaQuery
        .of(context)
        .size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffAED9BA),
        title: const Text(
          'Direct Delivery',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) => const AddDirectDelivery()));
        },
        backgroundColor: const Color(0xffAED9BA),
        child: const Icon(
          Icons.add,
          size: 20,
          color: Colors.white,
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),


          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 8),
          //   child: TextFormField(
          //     controller: search,
          //     keyboardType: TextInputType.name,
          //     style: const TextStyle(color: Colors.black),
          //     decoration: InputDecoration(
          //       labelStyle: const TextStyle(color: Colors.black),
          //       focusedBorder: OutlineInputBorder(
          //         borderRadius: BorderRadius.circular(15),
          //         borderSide: const BorderSide(
          //             color: Color.fromARGB(255, 177, 174, 174), width: 0),
          //       ),
          //       border: OutlineInputBorder(
          //         borderRadius: BorderRadius.circular(15),
          //         borderSide: const BorderSide(
          //           color: Color.fromARGB(255, 177, 174, 174),
          //           width: 0,
          //         ),
          //       ),
          //       hintText: 'Search by name',
          //       hintStyle: const TextStyle(
          //           color: Colors.black45,
          //           fontFamily: 'Jost',
          //           fontSize: 19,
          //           fontWeight: FontWeight.w400,
          //           height: 20 / 14),
          //     ),
          //   ),
          // ),
          // listofsalesorder(size, 'Fastest 10 GMS', '09/08/2024', (){
          //   Navigator.of(context).push(
          //       MaterialPageRoute(builder: (context) => const OpeningStockbulkSample()));
          // }),
          // listofsalesorder("20/11/2024",(){})
          const Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                'Date',
                style: TextStyle(
                  fontFamily: 'Jost',
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  height: 43 / 30,
                ),
              ),
            ],
          ),
          Datepicker(datecontroller: datecontroller),
          const Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                'Stock Location',
                style: TextStyle(
                  fontFamily: 'Jost',
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  height: 43 / 30,
                ),
              ),
            ],
          ),
          const DropdownButtonWidget(
            dropDownItem: [
              'Coimbatore',
              'Sulur',
              'Kuniyamuthur',
              'Perur'


            ],
            selectedItem: 'Coimbatore',
          ),


          Addmoreingoods(),


        ],
      ),
    );
  }
}
class Addmoreingoods extends StatefulWidget {
  const Addmoreingoods({super.key});

  @override
  State<Addmoreingoods> createState() => _AddmoreingoodsState();
}
class _AddmoreingoodsState extends State<Addmoreingoods> {
  List<Widget> goodsandServiceslist = [const GoodsServices()];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < goodsandServiceslist.length; i++)
          goodsandServiceslist[i],
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  goodsandServiceslist.add(const GoodsServices());
                });
              },
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(25)),
                child: const Center(
                  child: Text(
                    'Add',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Jost',
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      height: 43 / 30,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  goodsandServiceslist.removeLast();
                });
              },
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(25)),
                child: const Center(
                  child: Text(
                    'Delete',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Jost',
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      height: 43 / 30,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}


class GoodsServices extends StatefulWidget {
  const GoodsServices({super.key});

  @override
  State<GoodsServices> createState() => _GoodsServicesState();
}

class _GoodsServicesState extends State<GoodsServices> {
  TextEditingController goodsandServices = TextEditingController();
  TextEditingController price = TextEditingController();
  TextEditingController quantity = TextEditingController();
  TextEditingController total = TextEditingController();
  TextEditingController tax = TextEditingController();
  TextEditingController discount = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey.shade200,
        ),
        child: Column(
          children: [
            const Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Product',
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    height: 43 / 30,
                  ),
                ),
              ],
            ),
            Inputform(
              controller: price,
              label: 'Product',
            ),
            const Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Batch/Lot',
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    height: 43 / 30,
                  ),
                ),
              ],
            ),
            Inputform(
              controller: quantity,
              label: 'Batch/Lot',
            ),
            const Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Quantity',
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    height: 43 / 30,
                  ),
                ),
              ],
            ),
            Inputform(
              controller: total,
              label: 'Quantity',
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}