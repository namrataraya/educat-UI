
// ignore_for_file: file_names, camel_case_types, prefer_const_constructors, duplicate_ignore

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';

class customRichText extends StatelessWidget {
  const customRichText({
    Key? key,
    required this.description,
    required this.text,
    required this.onTap,
  }) : super(key: key);
  final String description;
  final String text;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Center(
        child: Text.rich(
          TextSpan(
              text: description,
              // ignore: prefer_const_constructors
              style: TextStyle(
                color: Color(0xFFC4C4C4),
              ),
              children: [
                TextSpan(
                    text: text,
                    style: TextStyle(
                        color: Color(0xFF36A15C), fontWeight: FontWeight.w600),
                    recognizer: TapGestureRecognizer()..onTap = onTap),
              ]),
        ),
      ),
    );
  }
}
