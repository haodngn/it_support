import 'package:flutter/material.dart';
class findscreen extends StatefulWidget {
  const findscreen({ Key? key }) : super(key: key);

  @override
  _findscreenState createState() => _findscreenState();
}

class _findscreenState extends State<findscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tìm người sửa",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Body(),
    );
  }
}

class Body  extends StatefulWidget {
  @override
  _State createState() {
    return _State();
  }
}

class _State extends State<Body> {
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
            child: Text("Đang tìm kiếm người sửa....", style: TextStyle(fontSize: 23),),
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