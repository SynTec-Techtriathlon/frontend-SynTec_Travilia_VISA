import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../theme.dart'; // For formatting the date

class CustomDatePicker extends StatefulWidget {
  final TextEditingController controller;
  final String placeholder;

  const CustomDatePicker({super.key, required this.controller, required this.placeholder});

  @override
  _CustomDatePickerState createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1900),
          lastDate: DateTime(2100),
        );

        if (pickedDate != null) {
          String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
          widget.controller.text = formattedDate;
        }
      },
      child: AbsorbPointer(
        child: TextField(
          controller: widget.controller,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.grey[400]!, width: 1),
            ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color.fromARGB(155, 100, 100, 100),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(15.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Color(0xff011E30),
                width: 2,
              ),
            ),
            filled: true,
            hintStyle: hintStyle,
            fillColor: const Color.fromRGBO(255, 255, 255, 0.702),
            labelText: widget.placeholder,
            labelStyle: hintStyle,
            suffixIcon: const Icon(Icons.calendar_today),
          ),
        ),
      ),
    );
  }
}
