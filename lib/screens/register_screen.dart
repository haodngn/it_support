import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        constraints: const BoxConstraints.expand(),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                child: Container(
                    width: 130,
                    height: 130,
                    // padding: EdgeInsets.all(15),
                    // decoration: BoxDecoration(
                    //     shape: BoxShape.circle, color: Colors.blue),
                    child: Image.asset('assets/images/logo_app.png')),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: Text(
                  "Hello,\nWelcome !",
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
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 28),
                child: TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                      labelText: "EMAIL",
                      labelStyle:
                          TextStyle(color: Color(0xff888888), fontSize: 15)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "PASSWORD",
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
                          labelText: "CONFIRM PASSWORD",
                          labelStyle: TextStyle(
                              color: Color(0xff888888), fontSize: 15)),
                    ),
                  ),
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
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onSignInClicked() {}
}
