// import 'package:flutter/material.dart';
// import 'package:it_support/screens/account_screen.dart';
// import 'package:it_support/screens/home_screen.dart';
// import 'package:it_support/screens/message_screen.dart';
//
// class BottomNavBar extends StatefulWidget {
//   const BottomNavBar({Key? key}) : super(key: key);
//
//   @override
//   State<StatefulWidget> createState() {
//     return BottomNavBarState();
//   }
// }
//
// class BottomNavBarState extends State<BottomNavBar> {
//   int selectedIndex = 0;
//   Widget home = HomeScreenCustomer();
//   Widget message = MessageScreen();
//   Widget account = AccountScreen();
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       currentIndex: this.selectedIndex,
//       items: const [
//         BottomNavigationBarItem(
//           icon: Icon(Icons.home),
//           title: Text("Home"),
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.message),
//           title: Text("Message"),
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.person),
//           title: Text("Profile"),
//         )
//       ],
//       onTap: (int index) {
//         this.onTapHandler(index);
//       },
//     );
//   }
//
//   void onTapHandler(int index) {
//     setState(() {
//       this.selectedIndex = index;
//     });
//   }
// }
