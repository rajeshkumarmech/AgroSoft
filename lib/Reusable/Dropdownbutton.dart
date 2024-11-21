import 'package:flutter/material.dart';

class CustomDropdownButton extends StatefulWidget {
  final List<String> dropDownItem;
  final String selectedItem;
  final TextEditingController controller;
  final ValueChanged<String?>? onChange;

  const CustomDropdownButton({
    Key? key,
    required this.dropDownItem,
    required this.selectedItem,
    required this.controller,
    this.onChange,
  }) : super(key: key);

  @override
  State<CustomDropdownButton> createState() => _CustomDropdownButtonState();
}

class _CustomDropdownButtonState extends State<CustomDropdownButton> {
  late String selectedItem;

  @override
  void initState() {
    super.initState();

    // Ensure that the selectedItem is part of the dropDownItem list
    selectedItem = widget.dropDownItem.contains(widget.selectedItem)
        ? widget.selectedItem
        : widget.dropDownItem[0];

    widget.controller.text = widget.controller.text.isNotEmpty
        ? widget.controller.text
        : selectedItem;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: DropdownButtonFormField<String>(
        value: selectedItem,
        items: widget.dropDownItem.toSet().map((String item) {
          return DropdownMenuItem<String>(
            value: item,
            child: Text(
              item,
              style: const TextStyle(
                color: Colors.black87,
              ),
            ),
          );
        }).toList(),
        onChanged: (String? val) {
          setState(() {
            selectedItem = val!;
            widget.controller.text = val;
            if (widget.onChange != null) {
              widget.onChange!(val);
            }
          });
        },
        icon: const Icon(Icons.arrow_drop_down),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Colors.grey,
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.grey, width: 1),
          ),
        ),
      ),
    );
  }
}
