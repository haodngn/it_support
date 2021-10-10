import 'package:flutter/material.dart';

class CheckBoxController extends StatelessWidget {
  final String text;

  const CheckBoxController({Key? key, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    return CheckboxListTile(
      title: Text(text),
      checkColor: Colors.white,
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }

  void setState(Null Function() param0) {}
}
