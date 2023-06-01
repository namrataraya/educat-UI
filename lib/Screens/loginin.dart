// ignore_for_file: unused_local_variable, sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, use_full_hex_values_for_flutter_colors, avoid_print

import 'package:educat/Screens/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../Widget/CustomRichText.dart';
import 'homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  bool isPasswordVisible = false;

  // Firebase
final _auth = FirebaseAuth.instance;


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
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
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      "Login To Your ",
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "Account ",
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                _entryemailField(),
                _entrypasswordField(),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  alignment: Alignment.centerRight,
                  child: Text('Forgot Password ?',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                ),
                SizedBox(height: 30),
                _signinButton(),
                SizedBox(height: 30),
                Center(
                  child: Text(
                    "or continue with",
                    style: TextStyle(
                        color: Color(0xFFC4C4C4),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("images/Facebook.png"),
                    SizedBox(
                      width: 41,
                    ),
                    Image.asset("images/google.png")
                  ],
                ),
                customRichText(
                  description: "Don't have an account?",
                  text: 'Sign Up',
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUp()));
                  },
                ),
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
              }
              if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                  .hasMatch(value)) {
                return 'Please a valid Email';
              }
              return null;
            },
            decoration: InputDecoration(
                isDense: true,
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
          SizedBox(
            height: 10,
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

  Container _signinButton() {
    return Container(
      height: 45,
      width: 366,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Color(0xFFc4c4c4)),
      child: TextButton(
        onPressed: ()  {
          signIn(emailcontroller.text, passwordcontroller.text);
        },
       
        style: TextButton.styleFrom(primary: Colors.white),
        child: Text("Sign In"),
      ),
    );
  }

  void signIn(String email, String password) async{
if (_formKey.currentState!.validate()) {

            await _auth.signInWithEmailAndPassword(email: email,
            password: password)
            .then((uid)=>{
              Fluttertoast.showToast(msg: "Login Successfull"),
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HomePage()))
            
            }).catchError((e)
            {
              Fluttertoast.showToast( msg: 'e!.message');
            }
            );
          }
        }
}


