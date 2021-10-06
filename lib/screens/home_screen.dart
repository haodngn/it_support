import 'package:flutter/material.dart';
import 'package:it_support/screens/components/body.dart';

class HomeScreenCustomer extends StatelessWidget {
  int value = 1;
  HomeScreenCustomer({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("IT Support"),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Body(value: value),
        ),
      ),
    );
  }
}
