import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/book_data.dart';
import '../../controllers/discover_book_controller.dart';

class DiscoverBooks extends StatelessWidget {
  final discoverBookController = Get.put(DiscoverBookController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: discoverBooks.length,
          itemBuilder: (context, index) {
            String discover = discoverBooks[index];

            return Obx(() => GestureDetector(
                  onTap: () {
                    discoverBookController.currentIndex.value = index;
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: discoverBookController.getBorderSide(
                                discoverBookController.currentIndex, index))),
                    child: Center(
                      child: Text(
                        discover.toUpperCase(),
                        style: TextStyle(
                            color: discoverBookController.getColor(
                                discoverBookController.currentIndex, index),
                            fontSize: 16.0,
                            letterSpacing: 1.2),
                      ),
                    ),
                    padding: EdgeInsets.all(5.0),
                    margin: EdgeInsets.only(right: 10.0),
                  ),
                ));
          }),
    );
  }
}
