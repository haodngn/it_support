import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:it_support/screens/problem_form_screen/android/huawei_form.dart';
import 'package:it_support/screens/problem_form_screen/android/lg_form.dart';
import 'package:it_support/screens/problem_form_screen/android/oppo_form.dart';
import 'package:it_support/screens/problem_form_screen/android/realme_form.dart';
import 'package:it_support/screens/problem_form_screen/android/samsung_form.dart';
import 'package:it_support/screens/problem_form_screen/android/vivo_form.dart';
import 'package:it_support/screens/problem_form_screen/android/xiaome_form.dart';

class AndroidCategory extends StatefulWidget {
  const AndroidCategory({Key? key}) : super(key: key);

  @override
  _AndroidCategoryState createState() => _AndroidCategoryState();
}

class _AndroidCategoryState extends State<AndroidCategory> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hãy Chọn loại thiết bị",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Body(size),
    );
  }
}

Body(size) {
  return Container(
    width: double.infinity,
    height: size.height,
    child: ListView(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 50),
            Material(
              clipBehavior: Clip.hardEdge,
              borderRadius: BorderRadius.circular(29),
              child: Stack(
                alignment: Alignment.bottomCenter,
                fit: StackFit.passthrough,
                children: [
                  Ink.image(
                    image: const AssetImage('assets/images/samsung.jpg'),
                    fit: BoxFit.cover,
                    height: 100,
                    width: 300,
                    child: InkWell(
                      onTap: () => {
                        Get.to(() => const SamsungForm(),
                            transition: Transition.rightToLeftWithFade,
                            duration: Duration(milliseconds: 600))
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Material(
              clipBehavior: Clip.hardEdge,
              borderRadius: BorderRadius.circular(29),
              child: Stack(
                alignment: Alignment.bottomCenter,
                fit: StackFit.passthrough,
                children: [
                  Ink.image(
                    image: const AssetImage('assets/images/oppo.jpg'),
                    fit: BoxFit.cover,
                    height: 100,
                    width: 300,
                    child: InkWell(
                      onTap: () => {
                        Get.to(() => const OppoForm(),
                            transition: Transition.rightToLeftWithFade,
                            duration: Duration(milliseconds: 600))
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Material(
              clipBehavior: Clip.hardEdge,
              borderRadius: BorderRadius.circular(29),
              child: Stack(
                alignment: Alignment.bottomCenter,
                fit: StackFit.passthrough,
                children: [
                  Ink.image(
                    image: const AssetImage('assets/images/lg.jpg'),
                    fit: BoxFit.cover,
                    height: 100,
                    width: 300,
                    child: InkWell(
                      onTap: () => {
                        Get.to(() => const LGForm(),
                            transition: Transition.rightToLeftWithFade,
                            duration: Duration(milliseconds: 600))
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Material(
              clipBehavior: Clip.hardEdge,
              borderRadius: BorderRadius.circular(29),
              child: Stack(
                alignment: Alignment.bottomCenter,
                fit: StackFit.passthrough,
                children: [
                  Ink.image(
                    image: const AssetImage('assets/images/xiaome.jpg'),
                    fit: BoxFit.cover,
                    height: 100,
                    width: 300,
                    child: InkWell(
                      onTap: () => {
                        Get.to(() => const XiaomeForm(),
                            transition: Transition.rightToLeftWithFade,
                            duration: Duration(milliseconds: 600))
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Material(
              clipBehavior: Clip.hardEdge,
              borderRadius: BorderRadius.circular(29),
              child: Stack(
                alignment: Alignment.bottomCenter,
                fit: StackFit.passthrough,
                children: [
                  Ink.image(
                    image: const AssetImage('assets/images/vivo.jpg'),
                    fit: BoxFit.cover,
                    height: 100,
                    width: 300,
                    child: InkWell(
                      onTap: () => {
                        Get.to(() => const VivoForm(),
                            transition: Transition.rightToLeftWithFade,
                            duration: Duration(milliseconds: 600))
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Material(
              clipBehavior: Clip.hardEdge,
              borderRadius: BorderRadius.circular(29),
              child: Stack(
                alignment: Alignment.bottomCenter,
                fit: StackFit.passthrough,
                children: [
                  Ink.image(
                    image: const AssetImage('assets/images/huawei.jpg'),
                    fit: BoxFit.cover,
                    height: 100,
                    width: 300,
                    child: InkWell(
                      onTap: () => {
                        Get.to(() => const HuaweiForm(),
                            transition: Transition.rightToLeftWithFade,
                            duration: Duration(milliseconds: 600))
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Material(
              clipBehavior: Clip.hardEdge,
              borderRadius: BorderRadius.circular(29),
              child: Stack(
                alignment: Alignment.bottomCenter,
                fit: StackFit.passthrough,
                children: [
                  Ink.image(
                    image: const AssetImage('assets/images/realme.jpg'),
                    fit: BoxFit.cover,
                    height: 100,
                    width: 300,
                    child: InkWell(
                      onTap: () => {
                        Get.to(() => const RealmeForm(),
                            transition: Transition.rightToLeftWithFade,
                            duration: Duration(milliseconds: 600))
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    ),
  );
}
