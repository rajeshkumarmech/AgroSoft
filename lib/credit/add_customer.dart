import 'package:agrosoft/credit/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'creditnote.dart';

class Customer_Add extends StatefulWidget {
  const Customer_Add({super.key});

  @override
  State<Customer_Add> createState() => _Customer_AddState();
}

var size,hei,wid;


class _Customer_AddState extends State<Customer_Add> {
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    hei = size.height;
    wid = size.width;

    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const CreditNote1()));
          },
          child: const Padding(
            padding: EdgeInsets.only(left: 18),
            child: Icon(Icons.arrow_back_outlined, size: 24, color: Color(0xff304755)),
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.only(left: 40),
          child: Text(
            "Add Customers",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Color(0xff263238)),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 35),
            child: ImageIcon(AssetImage("assets/agroicons/download.png"), size: 24),
          ),
        ],
      ),
      body:  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 26,top: 15),
              child: Text("Basic Details",style: subheading,
              ),),
            Padding(
              padding: const EdgeInsets.only(left: 22,right: 22,top: 5),
              child: Container(
                width: double.infinity,
                height: 208,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xffffffff),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10,top: 10,right: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                          label: RichText(
                            text: TextSpan(
                                children: [
                                  TextSpan(text: "Name",style: box),
                                  TextSpan(text: "*",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xffff0000)))
                                ]
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Color(0xff98A6AD),width: 1)
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff98A6AD,),width: 1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,top: 11,right: 10),
                      child: Container(
                        height: 53 ,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xffffffff),
                            border:Border.all(color: Color(0xff98A6AD))
                        ),
                        child: Row(
                          children: [
                            Container(
                              // height: 40,
                              width: wid/5,
                              color: Color(0xffffffff),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  label:Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("+91",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20,color: Color(0xff304755)),),
                                      ImageIcon(AssetImage("assets/agroicons/bxs_up-arrow.png"),size: 11,)
                                    ],
                                  ) ,
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide(color: Color(0xff98A6AD),width: 1)
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Color(0xff98A6AD),width: 0.5),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  floatingLabelBehavior: FloatingLabelBehavior.never,
                                  label: Center(
                                      child: Text("Enter Mobile Number",style: box,)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide(color: Color(0xff98A6AD),width: 1)
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Color(0xffffffff,),width: 1),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "E-mail",
                          labelStyle: box,
                          fillColor: const Color(0xffffffff),
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Color(0xff98A6AD),width: 1)
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff98A6AD),width: 1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26,top: 10),
              child: Text("Company Detail (optional)",style: subheading,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22,right: 22,top: 10),
              child: Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,top: 13),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  floatingLabelBehavior: FloatingLabelBehavior.always,
                                  labelText: "GST Number",
                                  labelStyle: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xff667075)),
                                  hintText: "22AAAAAAA0000A1Z5",
                                  hintStyle: box,
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide(color: Color(0xff98A6AD),width: 1)
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide(color: Color(0xff98A6AD),width: 1)
                                  )
                              ),
                            ),
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xffAED9BA),
                                  foregroundColor: const Color(0xff263238),
                                  padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 17),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3))

                              ),
                              onPressed: (){}, child: const Text("Fetch Details")
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: "Company Name",
                            labelStyle: box,
                            fillColor: const Color(0xffffffff),
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(color: Color(0xff98A6AD),width: 1)
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff98A6AD),width: 1),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26,top: 10),
              child: Text("Billing Address (optional)",style: subheading,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22,right: 22,top: 10),
              child: Container(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffffffff),
                      foregroundColor: const Color(0xff667075),
                      // padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 7),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                  ),
                  onPressed: (){
                    showModalBottomSheet(context: context,
                        isScrollControlled: true,
                        builder: (BuildContext context) {
                          return Padding(
                            padding:  EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom,
                            ),
                            child: Pop(),
                          );
                        }
                    );
                  }, child:
                Row(
                  children: [
                    Stack(
                        children: [
                          ImageIcon(AssetImage("assets/agroicons/flat-color-icons_plus.png"),size: 14,color: Color(0xff667075),),
                          ImageIcon(AssetImage("assets/agroicons/Vector (3).png"),size: 14,color: Color(0xffffffff),),
                          ImageIcon(AssetImage("assets/agroicons/Vector (4).png"),size: 14,color: Color(0xffffffff),),
                        ]
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("Billing Address",style: box,),
                    )
                  ],
                ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              height:90,
              decoration: BoxDecoration(
                  color: Color(0xffD9D9D9)
              ),
              child:  Padding(
                padding: const EdgeInsets.only(left: 22,right: 22,top: 15,bottom: 15),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff278942),
                        foregroundColor: const Color(0xffffffff),
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 7),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                    ),
                    onPressed: (){},
                    child: const Text("Submit",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600),)
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


class Pop extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> Popupstate();
}
class Popupstate extends State<Pop>{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: ScrollPhysics(),
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xffF5F5F7)
            ),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                  child: Center(
                      child: ImageIcon(AssetImage("assets/agroicons/Line 9.png"),size: 71,color: Color(0xff304755),)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 22,top: 15),
                  child: Text("Enter Details",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,color: Color(0xff263238)),),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Color(0xff426572),
                  thickness: 2,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 22,right: 22,top: 15),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Address Line 1",
                          labelStyle: box,
                          fillColor: const Color(0xffffffff),
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Color(0xff98A6AD),width: 1)
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff98A6AD),width: 1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 22,right: 22,top: 15),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Address Line 2",
                          labelStyle: box,
                          fillColor: const Color(0xffffffff),
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Color(0xff98A6AD),width: 1)
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff98A6AD),width: 1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 22,top: 15,right: 22),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Pincode",
                                  hintStyle: box,
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide(color: Color(0xff98A6AD),width: 1)
                                  )
                              ),
                            ),
                          ),
                          Container(
                            height: 53,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xffAED9BA),
                                    foregroundColor: const Color(0xff263238),
                                    padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 13),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3))

                                ),
                                onPressed: (){}, child: const Text("Fetch Details")),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 22,right: 22,top: 15),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "City",
                          labelStyle: box,
                          fillColor: const Color(0xffffffff),
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Color(0xff98A6AD),width: 1)
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff98A6AD),width: 1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 22,right: 22,top: 15),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "State",
                          labelStyle: box,
                          fillColor: const Color(0xffffffff),
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Color(0xff98A6AD),width: 1)
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff98A6AD),width: 1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 22,right: 22,top: 15,bottom: 15),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff278942),
                                foregroundColor: const Color(0xffffffff),
                                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 7),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                            ),
                            onPressed: (){
                              Navigator.pop(context);
                            },
                            child: const Text("Save & Update",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600),)
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}



