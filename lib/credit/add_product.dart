import 'package:agrosoft/credit/style.dart';
import 'package:flutter/material.dart';

import 'add_product_details.dart';

class Add_Product extends StatefulWidget {
  const Add_Product({super.key});

  @override
  State<Add_Product> createState() => _Add_ProductState();
}

class _Add_ProductState extends State<Add_Product>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_sharp,color: Colors.black),
        title: const Padding(
          padding: EdgeInsets.only(left: 22),
          child: Text("Add product",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Color(0xff000000)),),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 32),
            child: ImageIcon(AssetImage("assets/agroicons/barcode_scanner.png"),size: 24,),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50,right: 50,top: 20),
            child: Material(
              shadowColor: Colors.grey.shade900,
              elevation: 1.0,
              borderRadius: BorderRadius.circular(8),
              child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: const Color(0xffffffff),
                    filled: true,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    label: const Row(
                      children: [
                        ImageIcon(AssetImage("assets/agroicons/search.png"),size: 24,),
                        SizedBox(width: 10,),
                        Text("Search by name",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xff6F737E)),)
                      ],
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none),
                  )
              ),
            ),
          ),
          const SizedBox(height: 10,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff278942)
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> AddProductDetails()));
            },
            child: const Text(" +  Add new product",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xffffffff)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 22,right: 22,top: 10),
            child: Material(
              color: Colors.grey.shade900,
              shadowColor: Colors.grey.shade900,
              elevation: 1.0,
              borderRadius: BorderRadius.circular(8),
              // borderOnForeground: true,
              child: Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xffffffff),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15,top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Sample product",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18,color: Color(0xff000000)),),
                          Row(
                            children: [
                              ImageIcon(AssetImage("assets/agroicons/Vector (1).png"),size: 14,),
                              Text("100.00",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Color(0xff000000)),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 35,right: 22),
                        child: Stack(
                          children: [
                            Positioned(
                              right: 80,
                              top: 25,
                              child: Container(
                                height: 28,
                                width: 28,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: const Color(0xff278942),
                                ),
                                child: const ImageIcon(AssetImage("assets/agroicons/hline.png"),size: 14,color: Color(0xffffffff),),
                              ),
                            ),
                            Positioned(
                              right: 0,
                              top: 25,
                              child: Container(
                                height: 28,
                                width: 28,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: const Color(0xff278942),
                                ),
                                child: const ImageIcon(AssetImage("assets/agroicons/hline.png"),size: 25,color: Color(0xffffffff),),
                              ),
                            ),
                            const Positioned(
                                right: 4.5,
                                top: 30,
                                child: ImageIcon(AssetImage("assets/agroicons/vline.png"),size: 18,color: Color(0xffffffff),)
                            ),
                            const Positioned(
                              right: 45,
                              top: 27,
                              child: Text("0.0",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xff000000)),),
                            ),
                            Positioned(
                                top: 65,
                                child: InkWell(
                                  onTap: (){
                                    showModalBottomSheet(context: context,
                                        isScrollControlled: true,
                                        builder: (BuildContext context){
                                          return Padding(
                                            padding:  EdgeInsets.only(
                                              bottom: MediaQuery.of(context).viewInsets.bottom,
                                            ),
                                            child: poppro(),
                                          );
                                        }
                                    );
                                  },
                                  child: const Row(
                                    children: [
                                      Icon(Icons.edit,color: Color(0xff278942),size: 14,),
                                      Text("Edit",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xff278942)),),
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class poppro extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> Popprostate();
}
class Popprostate extends State<poppro>{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            // height: MediaQuery.of(context).size.height/2,
            child: Padding(
              padding: const EdgeInsets.only(left: 22,right: 22,top: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Sample product",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 26,color: Color(0xff000000)),),
                  const SizedBox(
                    height: 10,
                  ),
                  Text("Change Price",style: pophead),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10,top: 12),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: Color(0xff278942),width: 1),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff278942), width: 1.0),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff278942), width: 1.0),
                              ),
                              labelText: "Unit Price",
                              labelStyle: popg,
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: Color(0xff278942),width: 1),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff278942), width: 1.0),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff278942), width: 1.0),
                              ),
                              labelText: "Price with Tax",
                              labelStyle: popg,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Text("Discount in",style: pophead,),
                  const SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Color(0xff278942),width: 1)
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff278942), width: 1.0),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff278942), width: 1.0),
                        ),
                        labelStyle: popg,
                        labelText: 'percentage'
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text("Change Quantities & Units",style: pophead,),
                  const SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Color(0xff278942),width: 1)
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff278942), width: 1.0),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff278942), width: 1.0),
                        ),
                        labelStyle: popg,
                        labelText: 'Product Quantity'
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text("Product Description",style: pophead,),
                  const SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Color(0xff278942),width: 1)
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff278942), width: 1.0),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff278942), width: 1.0),
                      ),
                      labelStyle: popg,
                      labelText: 'Product Description',
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text("Total Amount",style: pophead,),
                          Row(
                            children: [
                              const ImageIcon(AssetImage("assets/agroicons/Vector (1).png"),size: 18,),
                              Text("100.00",style: pophead,)
                            ],
                          )
                        ],
                      ),
                      const SizedBox(width: 10,),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff278942),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                          ),
                          onPressed: (){},
                          child: const Text("Continue  >",style: TextStyle(
                            fontWeight: FontWeight.w500,fontSize: 16,color: Color(0xffffffff),
                          ),))
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}