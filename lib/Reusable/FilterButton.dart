import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  const FilterButton(
      {super.key, required this.FiltericonData, this.onTapButtton});
  final IconData FiltericonData;

  final Function()? onTapButtton;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: onTapButtton,
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 121, 162, 139),
                borderRadius: BorderRadius.circular(12)),
            child: Icon(
              FiltericonData,
              color: Color.fromARGB(255, 247, 248, 251),
            ),
          ),
        ),
      ],
    );
  }
}
