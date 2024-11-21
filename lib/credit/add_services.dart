import 'package:agrosoft/credit/style.dart';
import 'package:flutter/material.dart';

import 'add_product_details.dart';

class AddServices extends StatefulWidget {
  const AddServices({super.key});

  @override
  State<AddServices> createState() => _AddServicesState();
}

class _AddServicesState extends State<AddServices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_sharp,color: Colors.black),
        centerTitle: false,
        title: const Padding(
          padding: EdgeInsets.only(left: 12),
          child: Text("Add Services",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Color(0xff000000)),),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 22,right: 22,top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Service Details",
                style: ProductHead,
              ),
              SizedBox(height: 10,),
              Material(
                elevation: 1,
                color: Colors.grey.shade900,
                shadowColor: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xffffffff),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xffffffff),
                                foregroundColor: Color(0xff278942),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  side: BorderSide(color: Color(0xff278942)),
                                ),
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> AddProductDetails()));
                              },
                              child: Text("    Product    "),
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xff278942),
                                  foregroundColor: Color(0xffffffff),
                                ),
                                onPressed: (){},
                                child: Text("    Service    ")),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12,right: 12,top: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Color(0xff707070))
                            ),
                            labelText: "Service Name",
                            labelStyle: ProductField,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12,right: 12,top: 20),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Color(0xff707070))
                            ),
                            labelText: "Selling Price",
                            labelStyle: ProductField,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text("Inclusive of taxes",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 10,color: Color(0xff606060)),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12,right: 12,top: 15),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Color(0xff707070))
                            ),
                            labelText: "Tax rate %",
                            labelStyle: ProductField,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14,top: 4),
                        child: InkWell(
                          onTap: (){
                            showModalBottomSheet(context: context,
                                isScrollControlled: true,
                                builder: (BuildContext context){
                                  return Padding(
                                    padding:  EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                                    child: Popgst(),
                                  );
                                }
                            );
                          },
                          child: Row(
                            children: [
                              Container(
                                height: 15,width: 15,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: const Color(0xff278942),
                                ),
                                child: const Icon(Icons.add,color: Color(0xffffffff),size: 13,),
                              ),
                              const Text("  Enter GSTIN to add/change Tax",style: TextStyle(
                                  fontSize: 10,fontWeight: FontWeight.w400,color: Color(0xff278942)
                              ),),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12,right: 12,top: 15),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Color(0xff707070))
                            ),
                            labelText: "SAC Code (Optional)",
                            labelStyle: ProductField,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Text("Units",
                style: ProductHead,
              ),
              Material(
                elevation: 1,
                color: Colors.grey.shade900,
                shadowColor: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(8),
                child: Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12,right: 12,top: 15,bottom: 15),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Color(0xff707070),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                              side: BorderSide(color: Color(0xff707070))
                          ),
                          onPressed: (){
                            showModalBottomSheet(context: context,
                                isScrollControlled: true,
                                builder: (BuildContext context){
                                  return Padding(
                                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                                    child: PopUnit(),
                                  );
                                }
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Select Unit",style: ProductField,),
                              ImageIcon(AssetImage("assets/agroicons/down.png"),color: Colors.black,size: 25,)
                            ],
                          )
                      ),
                    )
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Optional Fields",style: ProductHead,),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text("Category",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Colors.black),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12,right: 12,top: 10),
                child: Container(
                  height: 55,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Color(0xff707070),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        side: BorderSide(color: Color(0xff707070)),
                      ),
                      onPressed: (){},
                      child: Row(
                        children: [
                          ImageIcon(AssetImage("assets/agroicons/search.png"),color: Colors.black,size: 25,),
                          Text("   Select Category",style: ProductField,),
                        ],
                      )
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text("Description",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Colors.black),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12,right: 12,top: 10),
                child: Container(
                  height: 55,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Color(0xff707070),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        side: BorderSide(color: Color(0xff707070)),
                      ),
                      onPressed: (){},
                      child: Row(
                        children: [
                          ImageIcon(AssetImage("assets/agroicons/search.png"),color: Colors.black,size: 25,),
                          Text("   Add Description",style: ProductField,),
                        ],
                      )
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageIcon(AssetImage("assets/agroicons/Ellipse 1160.png"),color: Color(0xff666666),size: 5,),
                  SizedBox(width: 1,),
                  ImageIcon(AssetImage("assets/agroicons/Ellipse 1160.png"),color: Color(0xff666666),size: 5),
                  SizedBox(width: 1,),
                  ImageIcon(AssetImage("assets/agroicons/Ellipse 1160.png"),color: Color(0xff666666),size: 5),
                  SizedBox(width: 5,),
                  Text("Add more details",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xff666666)),)
                ],
              ),
              SizedBox(height: 20,),
              Center(
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xff278942),
                  ),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff278942),
                        foregroundColor: Colors.white,
                      ),
                      onPressed: (){},
                      child: Text("Add Service",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),)),
                ),
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}

class Popgst extends StatefulWidget {
  @override
  State<StatefulWidget> createState()=> Popgststate();
}

class Popgststate extends State<Popgst> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15))
      ),
      height: MediaQuery.of(context).size.height/3,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 22,right: 22,top: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Add GSTIN",style: TextStyle(fontSize: 26,fontWeight: FontWeight.w600,color: Colors.black),),
            SizedBox(height: 30,),
            TextFormField(
              decoration: InputDecoration(
                fillColor: Color(0xffD9D9D9).withOpacity(0.50),
                filled: true,
                border: InputBorder.none,
                labelText: "Enter GST Number",
                labelStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xff000000).withOpacity(0.29)),
              ),
            ),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.only(left: 12,right: 12),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xff278942)
                ),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff278942),
                      foregroundColor: Color(0xffffffff),
                    ),
                    onPressed: (){},
                    child: Text("Save & Update")),
              ),
            )
          ],
        ),
      ),
    );
  }
}