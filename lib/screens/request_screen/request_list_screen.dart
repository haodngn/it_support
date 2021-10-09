import 'package:flutter/material.dart';
import 'package:it_support/constant.dart';
import 'package:it_support/screens/bottom_nav_bar_screen.dart';
import 'package:it_support/screens/components/detail_card.dart';

class ListRequestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Danh Sách Yêu Cầu"),
        automaticallyImplyLeading: false,
        backgroundColor: kBlueColor,
      ),
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 140,
              ),
              buildDetailList(),
              Padding(
                padding: const EdgeInsets.fromLTRB(120, 50, 0, 0),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: kBlueColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: new FlatButton(
                    child: new Text("Quay về trang chủ", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: kWhiteColor,
                    ),),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: backtoHomePage));
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget backtoHomePage(BuildContext context) {
    return BottomNavScreen();
  }

  buildDetailList() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        children: <Widget>[
          DetailCard(
            'Nguyễn Văn A',
            'Thiết bị : Laptop Asus\nTrạng thái: Đang xử lý',
            'assets/images/Yeti.png',
            kBlueColor,
          ),
          SizedBox(
            height: 20,
          ),
          DetailCard(
            'Nguyễn Văn A',
            'Thiết bị : Iphone 13 pro max\nTrạng thái: Hoàn Thành',
            'assets/images/Yeti.png',
            kBlueColor,
          ),
          SizedBox(
            height: 20,
          ),
          DetailCard(
            'Nguyễn Văn A',
            'Thiết bị : PC\nTrạng thái: Hoàn Thành',
            'assets/images/Yeti.png',
            kBlueColor,
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
