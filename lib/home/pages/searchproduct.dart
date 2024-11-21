import 'package:flutter/material.dart';

class Searchproduct extends StatefulWidget {
  const Searchproduct({super.key});

  @override
  State<Searchproduct> createState() => _SearchproductState();
}

class _SearchproductState extends State<Searchproduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Row(
            children: [
              const SizedBox(
                height: 40,
                width: 40,
                child:  Icon(Icons.arrow_back),
              ),
              Container(
                height: 40,
                color: Colors.amber,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: TextFormField(
                    decoration:const InputDecoration(
                      border:  OutlineInputBorder()
                    ),
                  ),
                ),
              ),
              Container(
                height: 40,
                width: 20,
                color: Colors.amberAccent,
                child: const Icon(Icons.file_present),
              ),
            ],
          )
        ],
      )),
    );
  }
}
