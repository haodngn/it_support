import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:it_support/constant.dart';
import 'package:it_support/screens/edit_profile_screen.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 70,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Hello,\nHao Dinh Nguyen',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: kTitleTextColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Container(
                    width: 380,
                    height: 300,
                    child: Image.asset('assets/images/logo.jpg')),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Thể loại',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kTitleTextColor,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              buildCategoryList(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Top Doctors',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kTitleTextColor,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // buildDoctorList(),
            ],
          ),
        ),
      ),
    );
  }

  buildCategoryList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 30,
          ),
          // ĐIỆN THOẠI IOS
          InkWell(
            onTap: () => {
              Get.to(() => EditProfile(),
                  transition:
                  Transition.rightToLeftWithFade,
                  duration: Duration(milliseconds: 600))
            },
            child: Stack(
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    width: 110,
                    height: 137,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 16,
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Điện thoại\n     iOS',
                        style: TextStyle(
                          color: kTitleTextColor,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 17,
                  child: Container(
                    height: 84,
                    width: 84,
                    decoration: BoxDecoration(
                      color: kBlueColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/icons/iosicon.jpg',
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          //ĐIỆN THOẠI ANDROID
          InkWell(
            onTap: () => {
              Get.to(() => EditProfile(),
                  transition:
                  Transition.rightToLeftWithFade,
                  duration: Duration(milliseconds: 600))
            },
            child: Stack(
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    width: 110,
                    height: 137,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 16,
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Điện thoại\nAndroid',
                        style: TextStyle(
                          color: kTitleTextColor,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 17,
                  child: Container(
                    height: 84,
                    width: 84,
                    decoration: BoxDecoration(
                      color: kBlueColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/icons/androidicon.png',
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          //MÁY TÍNH MACOS
          InkWell(
            onTap: () => {
              Get.to(() => EditProfile(),
                  transition:
                  Transition.rightToLeftWithFade,
                  duration: Duration(milliseconds: 600))
            },
            child: Stack(
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    width: 110,
                    height: 137,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 16,
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Máy tính\nmacOS',
                        style: TextStyle(
                          color: kTitleTextColor,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 17,
                  child: Container(
                    height: 84,
                    width: 84,
                    decoration: BoxDecoration(
                      color: kBlueColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/icons/macoslogo.png',
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          //MÁY TÍNH WINDOW
          InkWell(
            onTap: () => {
              Get.to(() => EditProfile(),
                  transition:
                  Transition.rightToLeftWithFade,
                  duration: Duration(milliseconds: 600))
            },
            child: Stack(
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    width: 110,
                    height: 137,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 16,
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Máy tính\nWindows',
                        style: TextStyle(
                          color: kTitleTextColor,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 17,
                  child: Container(
                    height: 84,
                    width: 84,
                    decoration: BoxDecoration(
                      color: kBlueColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/icons/windownicon.png',
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}