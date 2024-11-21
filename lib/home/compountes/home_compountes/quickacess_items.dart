import 'package:flutter/material.dart';

class QuickacessItems extends StatelessWidget {
  final Color color;
  final String imagepath;
  final String name;
    final Function function;


  const QuickacessItems({
    Key? key,
    required this.color,
    required this.imagepath,
    required this.name,
    required this.function
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>function(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
        child: Container(
          margin: const EdgeInsets.only(left: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color.fromARGB(255, 252, 251, 249),
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(66, 80, 79, 79),
                spreadRadius: 2,
                blurRadius: 5,
              )
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(50),
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                    color: color,
                  ),
                  child: Center(
                    child: Image.asset(
                      imagepath,
                      height: 50,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Center(
                  child: SizedBox(
                    height: 60,
                    width: 120,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: const TextStyle(
                              fontFamily: 'Jost',
                              height: 1.734,
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                            children: [
                              TextSpan(
                                text: name,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
