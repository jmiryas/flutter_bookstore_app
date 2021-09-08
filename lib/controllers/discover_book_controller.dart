import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DiscoverBookController extends GetxController {
  var currentIndex = 0.obs;

  BorderSide getBorderSide(currentIndex, index) {
    return currentIndex == index
        ? BorderSide(color: Colors.red, width: 3.0)
        : BorderSide(color: Colors.white, width: 0.0);
  }

  Color getColor(currentIndex, index) {
    return currentIndex == index ? Colors.red : Colors.grey;
  }

  Text getTotalBook(int totalBook) {
    return totalBook > 1 ? Text("$totalBook books") : Text("$totalBook book");
  }
}
