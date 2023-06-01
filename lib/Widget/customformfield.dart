// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField(
      {Key? key,
      required this.headingText,
      required this.hintText,
      required this.obsecureText, required this.controller})
      : super(key: key);
  final String headingText;
  final String hintText;
  final bool obsecureText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          headingText,
          // ignore: prefer_const_constructors
          style: TextStyle(
            fontSize: 14,
            // ignore: prefer_const_constructors
            color: Color(0xFF979797),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          
          obscureText: obsecureText,
          decoration: InputDecoration(
            hintText: hintText,
            
           enabledBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Color(0xFFE8EDF0), width: 3)), 
                     focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFE8EDF0), width: 3)),
            fillColor: Color(0xFFE8EDF0),
            filled: true,
          ),
        )
      ],
    );
  }
}
