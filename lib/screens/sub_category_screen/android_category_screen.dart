import 'package:flutter/material.dart';

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
          "Hãy Chọn thiết bị của bạn",
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
    child: Stack(
      alignment: Alignment.center,
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
                    image: const AssetImage('assets/images/cellphone.jpg'),
                    fit: BoxFit.cover,
                    height: 200,
                    width: 300,
                    child: InkWell(onTap: () {}),
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
                    image: const AssetImage('assets/images/tablet.jpg'),
                    fit: BoxFit.cover,
                    height: 200,
                    width: 300,
                    child: InkWell(onTap: () {}),
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
