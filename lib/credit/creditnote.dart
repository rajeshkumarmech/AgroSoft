import 'package:agrosoft/credit/style.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import '../Screen/CreateInvoiceScreen/Customers/Customers.dart';
import 'add_product.dart';
import 'companydetails.dart';

class CreditNote1 extends StatefulWidget {
  const CreditNote1({super.key});

  @override
  State<CreditNote1> createState() => _CreditNote1State();
}

class _CreditNote1State extends State<CreditNote1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  InkWell(
            onTap: (){

            },
            child: Icon(Icons.arrow_back_outlined,size: 23,color: Color(0xff304755),)),
        title: const Text("Credit Note",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500,color: Color(0xff263238)),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(width: 36,),
                Text("Company details",style: regular,),
              ],
            ),
            // SizedBox(
            //   height: 12,
            // ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Company()),);
              },
              child: Center(
                child: Container(
                  width: double.infinity,
                  height: 80,
                  margin: EdgeInsets.only(top: 6,right: 27,left: 27),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    // border: Border.all(),
                    color: Color(0xffCAF1D5),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Opacity(
                          opacity : 0.6,
                          child: Image(image: AssetImage("assets/images/agrocredit.png",),width: 79,height: 64,fit: BoxFit.fill,)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Add +",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w500,color: Color(0xff304755)),),
                      ),
                      // Icon(Icons.add,),
                      Opacity(
                          opacity: 0.6,
                          child: Image(image: AssetImage("assets/images/agrocredit.png",),width: 79,height: 64,fit: BoxFit.fill)),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(width: 36,),
                RichText(text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Supplier ",style: regular,
                      ),
                      WidgetSpan(child: Icon(Icons.error,size: 15,))
                    ]
                ))
              ],
            ),
            SizedBox(height: 10,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Customers()));
              },
              child: Container(
                height: 38,
                width: double.infinity,
                margin: EdgeInsets.only(top: 3,right: 22,left: 22),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Icon(Icons.add_circle,color: Color(0xff278942),),
                    SizedBox(width: 3,),
                    Text(" Customer",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff278942)),)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(width: 36,),
                RichText(text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Product ",style: regular,
                      ),
                      WidgetSpan(child: Icon(Icons.error,size: 15,))
                    ]
                ))
              ],
            ),
            SizedBox(height: 10,),
            Container(
              height: 38,
              width: double.infinity,
              margin: EdgeInsets.only(top: 3,right: 22,left: 22),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white
              ),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Add_Product()));
                },
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Icon(Icons.add_circle,color: Color(0xff278942),),
                    SizedBox(width: 3,),
                    Text(" Add products",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff278942)),)
                  ],
                ),
              ),
            ),
            Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 6,left: 36),
                child: Text("Optional",style: regular,)),
            Container(
              height: 43,
              width: double.infinity,
              margin: EdgeInsets.only(right: 22,left: 22),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: InkWell(
                onTap: (){
                  showModalBottomSheet(context: context,
                      isScrollControlled: true,
                      builder: (BuildContext context){
                        return Padding(
                          padding:  EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom,
                          ),
                          child: Popup(),
                        );
                      }
                  );
                },
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    ImageIcon(AssetImage("assets/agroicons/charm_notes-tick.png",),size: 18.58,),
                    SizedBox(width: 12,),
                    Text("Add Notes",style: const TextStyle(fontSize: 16.26,fontWeight: FontWeight.w400,color: Color(0xff263238)),)
                  ],
                ),
              ),
            ),
            // SizedBox(
            //   height: 15,
            // ),
            Container(
              height: 43,
              width: double.infinity,
              margin: EdgeInsets.only(right: 22,left: 22),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  ImageIcon(AssetImage("assets/agroicons/tdesign_money.png"),size: 18.06,),
                  SizedBox(width: 12,),
                  Text("Add Delivery/ Shipping Charges",style: TextStyle(fontSize: 15.81,fontWeight: FontWeight.w400,color: Color(0xff263238)),)
                ],
              ),
            ),
            // SizedBox(height: 15,),
            Container(
              height: 43,
              width: double.infinity,
              margin: EdgeInsets.only(right: 22,left: 22),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  ImageIcon(AssetImage("assets/agroicons/Vector.png"),size: 18,),
                  SizedBox(width: 12,),
                  Text("Attach File",style: TextStyle(fontSize: 15.81,fontWeight: FontWeight.w400,color: Color(0xff263238)),)
                ],
              ),
            ),
            SizedBox(height: 0,),
            Container(
              height: 103,
              width: double.infinity,
              margin: EdgeInsets.only(right: 22,left: 22),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                children: [
                  SizedBox(height: 1,),
                  Center(
                    child: Text("Attachment",style: TextStyle(fontSize: 15.81,fontWeight: FontWeight.w400,color: Color(0xff263238)),),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  DottedBorder(
                    dashPattern: [7],
                    strokeWidth: 1,
                    strokeCap: StrokeCap.round,
                    padding: EdgeInsets.all(6),
                    radius: Radius.circular(0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      child: Container(
                        height: 45,
                        width: 269,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.add,color: Colors.green,size: 24,),
                            Text("Attachment",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15.81,color: Color(0xff278942)),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 71,
              width: double.infinity,
              margin: EdgeInsets.only(top: 19),
              color: Color(0xffD9D9D9),
              child: Container(
                margin: EdgeInsets.only(left: 25,top: 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("Total Amount",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xff000000)),),
                        Text("0.00",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 22,color: Color(0xff000000),),)
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff278942),
                              foregroundColor: Color(0xffFFFFFF),
                              padding: EdgeInsets.symmetric(horizontal: 19,vertical: 3),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                          ),
                          child: Text("Create",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w600),)),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Popup extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> Popupstate();
}
class Popupstate extends State<Popup>{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 10,left: 26),
            child: Text("Notes",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500,color: Color(0xff263238)),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 22,right: 22),
            child: TextFormField(
              maxLines: 8,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Color(0xff98A6AD),width: 1)
                  )
              ),
            ),
          ),
          SizedBox(height: 10,),
          Center(
            child: Container(
              width: 155,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff278942),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                ),
                onPressed: (){},
                child: Text("Save",style: gbox,),
              ),
            ),
          )
        ],
      ),
    );
  }
}
