import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {

  var size,height,width;
  @override
  Widget build(BuildContext context) {

    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.green,
            child: ImageIcon(AssetImage("assets/agroicons/receipt..png"),size: 10,),
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: "sdfdgd",
            ),
          )
        ],
      ),
    );
  }
}
