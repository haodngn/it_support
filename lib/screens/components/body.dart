import 'package:flutter/material.dart';
import 'package:it_support/screens/components/backgound.dart';
import 'package:it_support/screens/components/dropdown_button.dart';
import 'package:it_support/screens/components/rounded_input_field.dart';
import 'package:it_support/screens/it_support_list_screen.dart';

class Body extends StatelessWidget {
  final int value = 1;
  const Body({Key? key, required int value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image.asset(
            "assets/images/Banner.png",
            width: size.width * 0.8,
          ),
        ),
        SizedBox(height: size.height * 0.03),
        ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Container(
            width: size.width * 0.8,
            color: Color(0xFFCFE9F1),
            // color: Colors.blueGrey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RoundedDropdownButton(),
                RoundedInputField(
                    hintText: "What's your problem...", onChanged: (value) {}),
                RoundedInputField(
                    hintText: "Explan your problem by picture...",
                    onChanged: (value) {},
                    icon: Icons.drive_folder_upload),
                FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: backtoListItScreen));
                  },
                  child: Text(
                    "SUBMIT",
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }

  Widget backtoListItScreen(BuildContext context) {
    return ListItScreen();
  }
}
