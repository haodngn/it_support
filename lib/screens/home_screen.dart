import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:it_support/constant.dart';
import 'package:it_support/screens/basicproblem/android_screen.dart';
import 'package:it_support/screens/basicproblem/windows_screen.dart';
import 'package:it_support/screens/components/search.dart';
import 'package:it_support/screens/sub_category_screen/ios_category_screen.dart';
import 'package:it_support/screens/sub_category_screen/android_category_screen.dart';
import 'package:it_support/screens/sub_category_screen/macOS_category_screen.dart';
import 'package:it_support/screens/sub_category_screen/windows_category_screen.dart';
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
                  'Các vấn đề phổ biến',
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
              SearchWidget(hintText: 'Tìm kiếm các lỗi cơ bản.', text: '', onChanged: (String value) {  },),
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
              Get.to(() => iOSCategory(),
                  transition: Transition.rightToLeftWithFade,
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
              Get.to(() => AndroidCategory(),
                  transition: Transition.rightToLeftWithFade,
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
              Get.to(() => MacOSCategory(),
                  transition: Transition.rightToLeftWithFade,
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
              Get.to(() => WindowsCategory(),
                  transition: Transition.rightToLeftWithFade,
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
                onTap: () => Get.to(() => WindowsScreen(),
                    transition: Transition.rightToLeftWithFade,
                    duration: Duration(milliseconds: 600)),
                  // final url = "https://tinhte.vn/thread/huong-dan-cap-nhat-len-windows-11-mien-phi-cach-ep-may-len-windows-11-ngay-hom-nay.3413014/";
                  // if(await canLaunch(url)) {
                  //   await launch(url);
                  // }

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
                            'HƯỚNG DẪN CÁCH KHỞI\nĐỘNG MÁY TÍNH NHANH HƠN',
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
                onTap: () => Get.to(() => AndroidScreen(),
                    transition: Transition.rightToLeftWithFade,
                    duration: Duration(milliseconds: 600)),
                // onTap: () async {
                //   final url = "https://www.dienmayxanh.com/kinh-nghiem-hay/huong-dan-cai-dat-windows-7-10-don-gian-nhat-ai-cu-1218882";
                //   if(await canLaunch(url)) {
                //     await launch(url);
                //   }
                // },
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
                            'HƯỚNG DẪN KHÔI PHỤC\nDANH BẠ TRÊN ANDROID',
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
                        child: Image.network("https://hoanghamobile.com/tin-tuc/wp-content/uploads/2019/06/dien-thoai-android-tot-nhat-hien-nay-1.jpg"),
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
