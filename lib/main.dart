import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: Color(0xFFF0F2F5)),
        title: 'Bookstore App',
        home: HomeScreen());
  }
}
