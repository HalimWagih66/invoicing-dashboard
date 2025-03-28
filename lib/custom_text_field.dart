import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.title, required this.contentField});
  final String title;
  final String contentField;
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        const SizedBox(height: 12),
        TextField(
          decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            hintText: contentField,
            fillColor: const Color(0xffFAFAFA),
            filled: true
          ),
        )
      ],
    );
  }
}