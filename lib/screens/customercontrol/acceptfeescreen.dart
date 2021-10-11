import 'package:flutter/material.dart';

class acceptfee extends StatefulWidget {
  const acceptfee({Key? key}) : super(key: key);

  @override
  _acceptfeeState createState() => _acceptfeeState();
}

class _acceptfeeState extends State<acceptfee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Thỏa Thuận Giá Sửa",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
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
          padding: const EdgeInsets.fromLTRB(20, 130, 20, 20),
          child: Container(
            alignment: Alignment.bottomCenter,
            width: 355,
            height: 400,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(29)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 100),
                  child: Text(
                    "Giá đề nghị",
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 110),
                  child: Text(
                    "3 Xu",
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                Container(
                  child: Row(                   
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                        child: ElevatedButton(
                          onPressed: () {
                            //method click
                          },
                          child: Text('Đồng Ý'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 60, 0),
                        child: ElevatedButton(                          
                          
                          onPressed: () {
                            //method click
                          },
                          child: Text('Từ Chối'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
