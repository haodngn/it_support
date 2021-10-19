import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:it_support/screens/customercontrol/ratingscreen.dart';

class billscreen extends StatefulWidget {
  const billscreen({Key? key}) : super(key: key);

  @override
  _billscreenState createState() => _billscreenState();
}

class _billscreenState extends State<billscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Thanh toán",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 100, 20, 20),
          child: Container(
            alignment: Alignment.bottomCenter,
            width: 355,
            height: 465,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(29)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 20),
                  child: Text(
                    "Hóa đơn",
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: GFAvatar(
                    size: 80,
                    backgroundImage: NetworkImage(
                        "https://cafefcdn.com/thumb_w/650/203337114487263232/2021/8/28/photo1630119914849-16301199150061205830569.jpg"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Text(
                    "IT Supporter: Nguyễn Thành Tín",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Text(
                    "Khách hàng: Hào Nguyễn",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Text(
                    "Vấn đề: không thể kết nối wifi",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                  child: Text(
                    "Thiết bị: Asus",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 34, 0),
                  child: Text(
                    "Thành tiền : ",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: gotoRate));
                            },
                            child: Text(
                              'Thanh toán',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            color: Colors.green,
                          ),
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

  Widget gotoRate(BuildContext context) {
    return ratingScreen();
  }
}
