import 'package:flutter/material.dart';
import 'package:it_support/screens/problem_form_screen/ipad_form.dart';
import 'package:it_support/screens/problem_form_screen/iphone_form.dart';
import 'package:get/get.dart';

class iOSCategory extends StatefulWidget {
  const iOSCategory({Key? key}) : super(key: key);

  @override
  _iOSCategoryState createState() => _iOSCategoryState();
}

class _iOSCategoryState extends State<iOSCategory> {
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
            SizedBox(height: 110),
            Material(
              clipBehavior: Clip.hardEdge,
              borderRadius: BorderRadius.circular(29),
              child: Stack(
                alignment: Alignment.bottomCenter,
                fit: StackFit.passthrough,
                children: [
                  Ink.image(
                    image: const AssetImage('assets/images/iPhone.jpg'),
                    fit: BoxFit.cover,
                    height: 200,
                    width: 300,
                    child: InkWell(
                      onTap: () => {
                        Get.to(() => const IphoneForm(),
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
                    image: const AssetImage('assets/images/iPad.jpg'),
                    fit: BoxFit.cover,
                    height: 200,
                    width: 300,
                    child: InkWell(
                      onTap: () => {
                        Get.to(() => const IpadForm(),
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
