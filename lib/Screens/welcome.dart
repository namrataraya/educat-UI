// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:educat/Screens/loginin.dart';
import 'package:educat/Screens/otp/verificationcode.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 80, left: 24, right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome to"),
            SizedBox(
              height: 5,
            ),
            Text(
              "Educat",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
            ),
            Image.asset(
              "images/4.png",
              height: 350,
              width: 350,
            ),
            TextButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/Facebook.png',
                      height: 30,
                      width: 30,
                    ),
                    SizedBox(width: 25),
                    Text(
                      "Continue with Facebook",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                side: BorderSide(width: 1.0, color: Color(0xFFAAAAAA)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 68),
                child: Row(
                  children: [
                    Image.asset(
                      'images/google.png',
                      height: 30,
                      width: 30,
                    ),
                    SizedBox(width: 25),
                    Text(
                      "Continue with Google",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(children: <Widget>[
              Expanded(
                  child: Divider(
                color: Color(0xFFAAAAAA),
              )),
              Text("OR"),
              Expanded(
                child: Divider(
                  color: Color(0xFFAAAAAA),
                ),
              ),
            ]),
            SizedBox(height: 24),
            SizedBox(
              height: 55,
              width: 366,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => LoginPage()));
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFF36A15C)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                  SizedBox(width: 5),
                GestureDetector(
                  
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const VerificationPage()));
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Color(0xFF36A15C),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
