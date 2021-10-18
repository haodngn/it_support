import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:it_support/screens/problem_form_screen/macOS/imac_form.dart';
import 'package:it_support/screens/problem_form_screen/macOS/macbook_form.dart';

class MacOSCategory extends StatefulWidget {
  const MacOSCategory({Key? key}) : super(key: key);

  @override
  _MacOSCategoryState createState() => _MacOSCategoryState();
}

class _MacOSCategoryState extends State<MacOSCategory> {
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
                    image: const AssetImage('assets/images/macbook.jpg'),
                    fit: BoxFit.cover,
                    height: 200,
                    width: 300,
                    child: InkWell(
                      onTap: () => {
                        Get.to(() => const MacBookForm(),
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
                    image: const AssetImage('assets/images/imac.jpg'),
                    fit: BoxFit.cover,
                    height: 200,
                    width: 300,
                    child: InkWell(
                      onTap: () => {
                        Get.to(() => const ImacForm(),
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
