import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:it_support/screens/problem_form_screen/windows/laptop_form.dart';
import 'package:it_support/screens/problem_form_screen/macOS/macbook_form.dart';
import 'package:it_support/screens/problem_form_screen/windows/pc_form.dart';

class WindowsCategory extends StatefulWidget {
  const WindowsCategory({Key? key}) : super(key: key);

  @override
  _WindowsCategoryState createState() => _WindowsCategoryState();
}

class _WindowsCategoryState extends State<WindowsCategory> {
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
      // alignment: Alignment.center,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 30),
            Material(
              clipBehavior: Clip.hardEdge,
              borderRadius: BorderRadius.circular(29),
              child: Stack(
                alignment: Alignment.bottomCenter,
                fit: StackFit.passthrough,
                children: [
                  Ink.image(
                    image: const AssetImage('assets/images/msi.jpg'),
                    fit: BoxFit.cover,
                    height: 100,
                    width: 300,
                    child: InkWell(
                      onTap: () => {
                        Get.to(() => const LaptopForm(),
                            transition: Transition.rightToLeftWithFade,
                            duration: Duration(milliseconds: 600))
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Material(
              clipBehavior: Clip.hardEdge,
              borderRadius: BorderRadius.circular(29),
              child: Stack(
                alignment: Alignment.bottomCenter,
                fit: StackFit.passthrough,
                children: [
                  Ink.image(
                    image: const AssetImage('assets/images/acer.jpg'),
                    fit: BoxFit.cover,
                    height: 100,
                    width: 300,
                    child: InkWell(
                      onTap: () => {
                        Get.to(() => const LaptopForm(),
                            transition: Transition.rightToLeftWithFade,
                            duration: Duration(milliseconds: 600))
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Material(
              clipBehavior: Clip.hardEdge,
              borderRadius: BorderRadius.circular(29),
              child: Stack(
                alignment: Alignment.bottomCenter,
                fit: StackFit.passthrough,
                children: [
                  Ink.image(
                    image: const AssetImage('assets/images/asus.jpg'),
                    fit: BoxFit.cover,
                    height: 100,
                    width: 300,
                    child: InkWell(
                      onTap: () => {
                        Get.to(() => const LaptopForm(),
                            transition: Transition.rightToLeftWithFade,
                            duration: Duration(milliseconds: 600))
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Material(
              clipBehavior: Clip.hardEdge,
              borderRadius: BorderRadius.circular(29),
              child: Stack(
                alignment: Alignment.bottomCenter,
                fit: StackFit.passthrough,
                children: [
                  Ink.image(
                    image: const AssetImage('assets/images/dell.jpg'),
                    fit: BoxFit.cover,
                    height: 100,
                    width: 300,
                    child: InkWell(
                      onTap: () => {
                        Get.to(() => const LaptopForm(),
                            transition: Transition.rightToLeftWithFade,
                            duration: Duration(milliseconds: 600))
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Material(
              clipBehavior: Clip.hardEdge,
              borderRadius: BorderRadius.circular(29),
              child: Stack(
                alignment: Alignment.bottomCenter,
                fit: StackFit.passthrough,
                children: [
                  Ink.image(
                    image: const AssetImage('assets/images/HP.jpg'),
                    fit: BoxFit.cover,
                    height: 100,
                    width: 300,
                    child: InkWell(
                      onTap: () => {
                        Get.to(() => const LaptopForm(),
                            transition: Transition.rightToLeftWithFade,
                            duration: Duration(milliseconds: 600))
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Material(
              clipBehavior: Clip.hardEdge,
              borderRadius: BorderRadius.circular(29),
              child: Stack(
                alignment: Alignment.bottomCenter,
                fit: StackFit.passthrough,
                children: [
                  Ink.image(
                    image: const AssetImage('assets/images/Lenovo.jpg'),
                    fit: BoxFit.cover,
                    height: 100,
                    width: 300,
                    child: InkWell(
                      onTap: () => {
                        Get.to(() => const LaptopForm(),
                            transition: Transition.rightToLeftWithFade,
                            duration: Duration(milliseconds: 600))
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Material(
              clipBehavior: Clip.hardEdge,
              borderRadius: BorderRadius.circular(29),
              child: Stack(
                alignment: Alignment.bottomCenter,
                fit: StackFit.passthrough,
                children: [
                  Ink.image(
                    image: const AssetImage('assets/images/pc.jpg'),
                    fit: BoxFit.cover,
                    height: 100,
                    width: 300,
                    child: InkWell(
                      onTap: () => {
                        Get.to(() => const PcForm(),
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
