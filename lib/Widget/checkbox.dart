// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Checkbox(checkColor: Colors.white ,  
                      activeColor: Color(0xFF36A15C),  

              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
            SizedBox(width: 10),
            Text(
                "By signing you accept our\nterms of services and privacy policy")
          ],
        )
      ],
    );
  }
}
