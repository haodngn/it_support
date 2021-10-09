import 'package:flutter/material.dart';

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
                    image: const AssetImage('assets/images/laptop.jpg'),
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
                    image: const AssetImage('assets/images/pc.jpg'),
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
