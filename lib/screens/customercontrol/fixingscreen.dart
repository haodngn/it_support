import 'package:flutter/material.dart';
class fixingscreen extends StatefulWidget {
  const fixingscreen({ Key? key }) : super(key: key);

  @override
  _fixingscreenState createState() => _fixingscreenState();
}

class _fixingscreenState extends State<fixingscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Đợi việc sửa chữa hoàn thành",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20,180,20,20),
        child: Container(
          alignment: Alignment.bottomCenter,
          width: 355,
          height: 300,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 50, 30, 140),
            child: Text("Đang sửa chữa thiết bị....", style: TextStyle(fontSize: 23),),
          ),      
          decoration: BoxDecoration(
            color: Colors.white,            
            borderRadius: BorderRadius.circular(29)
          ),
        ),
      )
    );
  }
}