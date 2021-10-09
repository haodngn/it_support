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
      body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              _firstWidget(),
              SizedBox(height: 20),
              _secondWidget(),
            ],
          )),
    );
  }
}

Widget _firstWidget() {
  return InkWell(
      onTap: () {},
      child: Card(
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        elevation: 2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Container(
                  height: 55,
                  width: 30,
                  decoration: myBoxDecoration(),
                  child: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                )),
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  'Samsung',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ],
        ),
      ));
}

Widget _secondWidget() {
  return InkWell(
      onTap: () {},
      child: Card(
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        elevation: 2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Container(
                  decoration: myBoxDecoration(),
                  height: 55,
                  width: 30,
                  child: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                )),
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  'Oppo',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ],
        ),
      ));
}

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    color: Colors.deepPurple,
    borderRadius:
        BorderRadius.all(Radius.circular(5.0) //         <--- border radius here
            ),
  );
}
