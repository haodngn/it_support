import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:it_support/screens/home_screen.dart';

class ratingScreen extends StatefulWidget {
  const ratingScreen({Key? key}) : super(key: key);

  @override
  _ratingScreenState createState() => _ratingScreenState();
}

class _ratingScreenState extends State<ratingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Đánh giá người hỗ trợ của bạn ",
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
  double _rating = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(      
        backgroundColor: Colors.grey,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 100, 20, 20),
          child: Container(
            
            alignment: Alignment.bottomCenter,
            width: 355,
            height: 450,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(29)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
                  child: Text(
                    "Hãy đánh giá",
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: GFAvatar(
                    size: 90,
                    backgroundImage: NetworkImage(
                        "https://cafefcdn.com/thumb_w/650/203337114487263232/2021/8/28/photo1630119914849-16301199150061205830569.jpg"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 25),
                  child: GFRating(
                    value: _rating,
                    onChanged: (value) {
                      setState(() {
                        _rating = value;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                  child: TextField(                   
                    decoration: InputDecoration(                      
                      border: OutlineInputBorder(),
                      labelText: "Nhận xét",
                      hintText: "Hãy nhập nhận xét của bạn"
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                        child: ClipRRect(borderRadius: BorderRadius.circular(15),
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.push(context,
                              MaterialPageRoute(builder: gotoHome));
                            },
                            child: Text(
                              'Đánh Giá',
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            color: Colors.green,
                          ),
                        ),                       
                      ),
                      
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 60, 0),
                        child: ClipRRect( borderRadius: BorderRadius.circular(15),
                          child: RaisedButton(
                            onPressed: () {
                              //method click
                            },
                            child: Text(
                              'Hủy Bỏ',
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            color: Colors.red,
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
  Widget gotoHome(BuildContext context) {
    return HomeScreen();
  }
}
