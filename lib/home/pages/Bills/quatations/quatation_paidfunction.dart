import 'package:flutter/material.dart';

class PaidfunctionQuatation extends StatefulWidget {
  const PaidfunctionQuatation({super.key});

  @override
  State<PaidfunctionQuatation> createState() => _PurchasePaidfunctionState();
}

class _PurchasePaidfunctionState extends State<PaidfunctionQuatation> {
  bool alltransaction = true;
  bool cancelled = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 20),
        _buildTransactionButton(
          isActive: alltransaction,
          label: 'All Transaction',
          onTap: () {
            setState(() {
              alltransaction = true;

              cancelled = false;
            });
          },
        ),
        const SizedBox(width: 10),
        _buildTransactionButton(
          isActive: cancelled,
          label: 'Cancelled',
          onTap: () {
            setState(() {
              alltransaction = false;

              cancelled = true;
            });
          },
        ),
      ],
    );
  }

  Widget _buildTransactionButton(
      {required bool isActive,
      required String label,
      required Function() onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: isActive
              ? const Color(0xFF278942).withAlpha(130)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            label,
            style: TextStyle(
              color: isActive ? const Color(0xFFFFFFFF) : Colors.black,
              fontFamily: 'Jost',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              height: 20 / 14,
            ),
          ),
        ),
      ),
    );
  }
}
