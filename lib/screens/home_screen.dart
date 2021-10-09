import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:it_support/constant.dart';
import 'package:it_support/screens/profile_screen/edit_profile_screen.dart';
import 'package:url_launcher/url_launcher.dart';


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
                  'Xin chào,',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: kTitleTextColor,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Hào Nguyễn',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: kTitleTextColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                child: Container(
                    width: 300,
                    height: 220,
                    child: Image.asset('assets/images/logo.jpg')
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Chọn thiết bị cần hỗ trợ',
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
                  'Tin tức về công nghệ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kTitleTextColor,
                    fontSize: 18,
                  ),
                ),
              ),
              // SizedBox(
              //   height: 10,
              // ),
              buildNewsList(),
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
                    width: 93,
                    height: 120,
                    padding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 12,
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Điện thoại\n      iOS',
                        style: TextStyle(
                          color: kTitleTextColor,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 18,
                  child: Container(
                    height: 65,
                    width: 65,
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
                    width: 93,
                    height: 120,
                    padding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 12,
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
                  left: 18,
                  child: Container(
                    height: 65,
                    width: 65,
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
                    width: 93,
                    height: 120,
                    padding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 12,
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
                  left: 18,
                  child: Container(
                    height: 65,
                    width: 65,
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
                    width: 93,
                    height: 120,
                    padding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 12,
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
                  left: 18,
                  child: Container(
                    height: 65,
                    width: 65,
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
  buildNewsList(){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
        child: Row(
            children: <Widget>[
              SizedBox(
                width: 30,
              ),
              InkWell(
                onTap: () async {
                  final url = "https://tinhte.vn/thread/huong-dan-cap-nhat-len-windows-11-mien-phi-cach-ep-may-len-windows-11-ngay-hom-nay.3413014/";
                  if(await canLaunch(url)) {
                    await launch(url);
                  }
                },
                child: Stack(
                  children: <Widget>[
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        width: 225,
                        height: 225,
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 16,
                        ),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'Hướng dẫn cập nhật lên Windows 11- tinhte.vn',
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
                        height: 200,
                        width: 200,
                        // decoration: BoxDecoration(
                        //   color: kBlueColor,
                        //   borderRadius: BorderRadius.circular(20),
                        // ),
                        child: Image.asset(
                          'assets/images/new1.jpg',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () async {
                  final url = "https://tinhte.vn/thread/mot-so-cai-dat-ban-dau-de-su-dung-windows-11-tot-hon.3413828/";
                  if(await canLaunch(url)) {
                    await launch(url);
                  }
                  // openBrowserURL(url: url, inApp: true);
                  // Get.to(() => EditProfile(),
                  //     transition:
                  //     Transition.rightToLeftWithFade,
                  //     duration: Duration(milliseconds: 600))
                },
                child: Stack(
                  children: <Widget>[
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        width: 225,
                        height: 225,
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 16,
                        ),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'Một số cài đặt ban đầu để sử dụng Windows 11 tốt hơn- tinhte.vn',
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
                        height: 200,
                        width: 200,
                        // decoration: BoxDecoration(
                        //   color: kBlueColor,
                        //   borderRadius: BorderRadius.circular(20),
                        // ),
                        child: Image.asset(
                          'assets/images/new2.jpg',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () async {
                  final url = "https://tinhte.vn/thread/huong-dan-cap-nhat-len-windows-11-mien-phi-cach-ep-may-len-windows-11-ngay-hom-nay.3413014/";
                  if(await canLaunch(url)) {
                    await launch(url);
                  }
                },
                child: Stack(
                  children: <Widget>[
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        width: 225,
                        height: 225,
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 16,
                        ),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'Đổi từ Laptop Windows sang Macbook, được gì và mất gì?- tinhte.vn',
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
                        height: 200,
                        width: 200,
                        // decoration: BoxDecoration(
                        //   color: kBlueColor,
                        //   borderRadius: BorderRadius.circular(20),
                        // ),
                        child: Image.asset(
                          'assets/images/new3.jpg',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () async {
                  final url = "https://tinhte.vn/thread/huong-dan-cap-nhat-len-windows-11-mien-phi-cach-ep-may-len-windows-11-ngay-hom-nay.3413014/";
                  if(await canLaunch(url)) {
                    await launch(url);
                  }
                },
                child: Stack(
                  children: <Widget>[
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        width: 225,
                        height: 225,
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 16,
                        ),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'Infographic: Vòng đời các bản Windows- tinhte.vn',
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
                        height: 200,
                        width: 200,
                        // decoration: BoxDecoration(
                        //   color: kBlueColor,
                        //   borderRadius: BorderRadius.circular(20),
                        // ),
                        child: Image.asset(
                          'assets/images/new4.jpg',
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