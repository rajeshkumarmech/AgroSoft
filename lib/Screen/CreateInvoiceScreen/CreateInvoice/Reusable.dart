import 'package:flutter/material.dart';

class DropdownButtonWidget extends StatefulWidget {
  final List<String> items;
  final String selectedItem;

  const DropdownButtonWidget({
    super.key,
    required this.items,
    required this.selectedItem,
  });

  @override
  State<DropdownButtonWidget> createState() => _DropdownButtonWidgetState();
}

class _DropdownButtonWidgetState extends State<DropdownButtonWidget> {
  late String selectedItem;

  @override
  void initState() {
    super.initState();

    selectedItem = widget.selectedItem;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: DropdownButton<String>(
          value: selectedItem, // Use the state variable here
          icon: const Icon(
            Icons.keyboard_arrow_down,
            color: Color(0xff278942),
            size: 24,
          ),
          isExpanded: true,
          underline: Container(), // Removes the underline
          items: widget.items.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  value,
                  style: const TextStyle(
                    color: Color(0xff278942),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            );
          }).toList(),
          onChanged: (String? val) {
            if (val != null) {
              setState(() {
                selectedItem = val; // Update the state with the new value
              });
            }
          },
        ),
      ),
    );
  }
}

class DropDownButton extends StatefulWidget {
  final List<String> items;
  final String selectedItem;
  final ValueChanged<String>? onChanged;

  const DropDownButton({
    Key? key,
    required this.items,
    required this.selectedItem,
    this.onChanged,
  }) : super(key: key);

  @override
  State<DropDownButton> createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  late String selectedItem;
  @override
  void initState() {
    super.initState();
    selectedItem = widget.selectedItem;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius:
              BorderRadius.all(Radius.circular(5)), // Optional: Rounded corners
        ),
        child: DropdownButton<String>(
          value: widget.selectedItem,
          icon: const Icon(
            Icons.keyboard_arrow_down,
            color: Color(0xff278942),
            size: 24,
          ),
          isExpanded: true,
          underline: Container(),
          items: widget.items.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  value,
                  style: const TextStyle(
                    color: Color(0xff278942),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            );
          }).toList(),
          onChanged: (String? val) {
            setState(() {
              selectedItem = val!;
            });
          },
        ),
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final bool obscureText;

  const CustomTextFormField({
    Key? key,
    required this.hintText,
    this.validator,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Color.fromARGB(255, 85, 84, 84),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1),
          ),
        ),
      ),
    );
  }
}

class DateTextField extends StatelessWidget {
  final String hintText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final bool obscureText;
  const DateTextField(
      {super.key,
      required this.hintText,
      this.validator,
      this.controller,
      required this.keyboardType,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Color.fromARGB(255, 85, 84, 84),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1),
          ),
        ),
      ),
    );
  }
}

class DiscountDropdown extends StatelessWidget {
  final List<String> items;
  final String? selectedItem;
  final ValueChanged<String?> onChanged;

  const DiscountDropdown(
      {super.key,
      required this.items,
      this.selectedItem,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10),
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(4.0),
            bottomLeft: Radius.circular(4.0),
          ),
        ),
        child: DropdownButton<String>(
          value: selectedItem,
          onChanged: onChanged,
          icon: const Icon(
            Icons.keyboard_arrow_down,
            size: 24,
          ),
          underline: Container(),
          items: items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
