// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:educat/Model/onbording_content.dart';
import 'package:educat/Screens/welcome.dart';
import 'package:flutter/material.dart';

class OnbordingScreen extends StatefulWidget {
  const OnbordingScreen({Key? key}) : super(key: key);

  @override
  State<OnbordingScreen> createState() => _OnbordingScreenState();
}

class _OnbordingScreenState extends State<OnbordingScreen> {
  int currentIndex = 0;
  PageController _controller = PageController();

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24, top: 150),
                  child: Column(
                    children: [
                      Image.asset(
                        contents[i].image,
                        height: 366,
                        width: 366,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        contents[i].title,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        contents[i].description,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              contents.length,
              (index) => buildDot(index, context),
            ),
          ),
          Container(
            height: 45,
            margin: EdgeInsets.all(40),
            width: double.infinity,
            child: TextButton(
              onPressed: () {
                if (currentIndex == contents.length - 1) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => WelcomePage()));
                }
                _controller.nextPage(
                    duration: Duration(milliseconds: 100),
                    curve: Curves.bounceIn);
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFF36A15C)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ))),
              child: Text(
                currentIndex == contents.length - 1 ? "Start Learning" : "Next",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 20 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFF36A15C),
      ),
    );
  }
}
