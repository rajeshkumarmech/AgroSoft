import 'package:flutter/material.dart';

class Tabitem extends StatelessWidget {
  final String titile;
  const Tabitem({super.key, required this.titile});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            titile,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Color(0xFFFFFFFF),
              fontFamily: 'Jost',
              fontWeight: FontWeight.w500,
              fontSize: 15,
              height: 20 / 15,
            ),
          ),
        ],
      ),
    );
  }
}
