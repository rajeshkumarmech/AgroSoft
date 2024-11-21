import 'package:flutter/material.dart';

class CreateItems extends StatelessWidget {
  final String name;
  final Color color;
  final String imagePath;
  final Function function;

  const CreateItems({
    Key? key,
    required this.color,
    required this.imagePath,
    required this.name,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => function(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            radius: 30,
            child: Image.asset(
              imagePath,
              height: 30,
            ),
          ),
         const SizedBox(height: 10,),
          SizedBox(
            height: 40,
            width: 120,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: const TextStyle(
                  fontFamily: 'Jost',
                  height: 1,
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
          ),
        ],
      ),
    );
  }
}
