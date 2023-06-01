// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, duplicate_ignore, non_constant_identifier_names, avoid_print

import 'package:educat/Screens/otp/verificationcode.dart';
import 'package:flutter/material.dart';

import '../Widget/checkbox.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isPasswordVisible = false;
 
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 80, left: 24, right: 24),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Create Your",
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "Account",
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                _entryemailField(),
                _entrypasswordField(),
                _entryconfirmpasswordField(),
                SizedBox(height: 10),
                CheckBox(),
                SizedBox(height: 90),
                _signupButton()
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget _entryemailField() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Email",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: emailcontroller,
            validator: (value) {
              if (value!.isEmpty) {
                return "Enter email";
              }  if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)){
                        return 'Please a valid Email';
                      }
                      return null;
            },
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                suffixIcon: emailcontroller.text.isEmpty
                    ? Container(
                        width: 0,
                      )
                    : IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () {
                          emailcontroller.clear();
                        },
                      ),
                hintText: "Your email",
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Color(0xFFE8EDF0), width: 3)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFE8EDF0), width: 3)),
                fillColor: Color(0xFFE8EDF0),
                filled: true),
          ),
         
        ],
      ),
    );
  }

  Widget _entrypasswordField() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Password",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return "Enter password";
              } else if (value.length < 6) {
                return "password should be at least 6 characters";
              }
              return null;
            },
            controller: passwordcontroller,
            obscureText: isPasswordVisible,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                hintText: "Your password",
                suffixIcon: IconButton(
                    icon: isPasswordVisible
                        ? Icon(Icons.visibility_off)
                        : Icon(Icons.visibility),
                    onPressed: () {
                      setState(() => isPasswordVisible = !isPasswordVisible);
                    }),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Color(0xFFE8EDF0), width: 3)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFE8EDF0), width: 3)),
                fillColor: Color(0xFFE8EDF0),
                filled: true),
          ),
        ],
      ),
    );
  }

  
  Widget _entryconfirmpasswordField() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Confirm Password",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            validator:  (Value){
              if(Value!.isEmpty)
              {
                return "Please re-enter password";
                
              }
              print(passwordcontroller.text);
              print(confirmpasswordcontroller.text);
              if(passwordcontroller.text!=confirmpasswordcontroller.text){
                return "Password doesnot  match";
              }
              return null;
            },
            controller: confirmpasswordcontroller,
            obscureText: isPasswordVisible,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                hintText: "Your password",
                suffixIcon: IconButton(
                    icon: isPasswordVisible
                        ? Icon(Icons.visibility_off)
                        : Icon(Icons.visibility),
                    onPressed: () {
                      setState(() => isPasswordVisible = !isPasswordVisible);
                    }),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Color(0xFFE8EDF0), width: 3)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFE8EDF0), width: 3)),
                fillColor: Color(0xFFE8EDF0),
                filled: true),
          ),
        ],
      ),
    );
  }
    Widget _signupButton() {
    return Container(
                height: 45,
                width: 366,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFc4c4c4)),
                child: TextButton(
                  onPressed: () {
                    if(_formKey.currentState!.validate())
                      {
                      //  go to  otp screen
                    Navigator.push(context,
                      MaterialPageRoute(builder: (_) => VerificationPage()));
                      }
                  },
                  style: TextButton.styleFrom(primary: Colors.white),
                  child: Text("Sign Up"),
                ),
              );
  }

}
