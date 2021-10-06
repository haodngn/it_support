import 'package:flutter/material.dart';
import 'package:it_support/screens/bottom_nav_bar_screen.dart';
import 'package:it_support/screens/forgot_password_screen.dart';
import 'package:it_support/screens/home_screen.dart';
import 'package:it_support/screens/register_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        constraints: BoxConstraints.expand(),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Container(
                    width: 380,
                    height: 300,
                    // padding: EdgeInsets.all(15),
                    // decoration: BoxDecoration(
                    //     shape: BoxShape.circle, color: Colors.blue),
                    child: Image.asset('assets/images/logo.jpg')),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: Text(
                  "Hello,\nWelcome Back !",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 30),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 28),
                child: TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                      labelText: "USERNAME",
                      labelStyle:
                          TextStyle(color: Color(0xff888888), fontSize: 15)),
                ),
              ),
              Stack(
                alignment: AlignmentDirectional.centerEnd,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                    child: TextField(
                      style: TextStyle(fontSize: 18, color: Colors.black),
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "PASSWORD",
                          labelStyle: TextStyle(
                              color: Color(0xff888888), fontSize: 15)),
                    ),
                  ),
                  Text(
                    "SHOW",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: RaisedButton(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    onPressed: onSignInClicked,
                    // child: Text(
                    //   "SIGN IN",
                    //   style: TextStyle(color: Colors.white, fontSize: 16),
                    // ),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: backtoCustomerScreen));
                      },
                      child: Text(
                        "SIGN IN",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 130,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: Text(
                        "NEW USER? SIGN UP",
                        style:
                            TextStyle(fontSize: 15, color: Color(0xff888888)),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: backtoRegister));
                      },
                    ),
                    InkWell(
                      child: Text(
                        "FORGOT PASSWORD?",
                        style: TextStyle(fontSize: 15, color: Colors.blue),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: backtoForgotPasswordScreen));
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget backtoRegister(BuildContext context) {
    return RegisterScreen();
  }

  Widget backtoForgotPasswordScreen(BuildContext context) {
    return ForgotPasswordScreen();
  }

  Widget backtoCustomerScreen(BuildContext context) {
    return BottomNavScreen();
  }

  void onSignInClicked() {}
}
