// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:educat/Screens/otp/component/otp_form.dart';
import 'package:flutter/material.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({Key? key}) : super(key: key);

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}
class _VerificationPageState extends State<VerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 100, right: 24, left: 24),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              "Verification",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 15),
            const Text(
              "We sent you a code to verify\nyour email address",
              style: TextStyle(
                color: Color(0xFFc4c4c4),
              ),
            ),
            SizedBox(height: 60),
            OtpForm(),
            SizedBox(height: 100),
            Row(
              children: [
                Text(
                  "I didn't receive a code!",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Re-send code",
                    style: TextStyle(
                        color: Color(0xFF36A15C),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            SizedBox(height: 250),
            _doneButton()
          ]),
        ),
      ),
    );
  }

  Widget _doneButton() {
    return Container(
      height: 45,
      width: 366,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Color(0xFFc4c4c4)),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(primary: Colors.white),
        child: Text("Done"),
      ),
    );
  }
}
