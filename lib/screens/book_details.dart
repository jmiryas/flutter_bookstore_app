import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../models/book_model.dart';

class BookDetails extends StatelessWidget {
  String _getRating(int rating) {
    String result = "";

    for (int i = 0; i < rating; i++) {
      result += "⭐";
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    BookModel bookModel = Get.arguments;

    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(bookModel.image))),
        ),
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: [
              BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0.0, 2.0),
                  blurRadius: 6.0)
            ])),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 24.0,
                  )),
            ),
            Stack(
              children: [
                Container(
                  height: 300.0,
                  width: double.infinity,
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0.0, 2.0),
                            blurRadius: 6.0)
                      ],
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(30.0))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        bookModel.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 20.0,
                            letterSpacing: 1.2,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        bookModel.author,
                        style: TextStyle(color: Colors.grey, fontSize: 18.0),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        _getRating(
                          bookModel.rating,
                        ),
                        style: TextStyle(fontSize: 18.0),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextButton(
                          style: TextButton.styleFrom(
                              padding: EdgeInsets.all(20.0),
                              backgroundColor: Colors.green),
                          onPressed: () {
                            Alert(
                              context: context,
                              title: bookModel.name,
                              desc: bookModel.description,
                              buttons: [
                                DialogButton(
                                  child: Text(
                                    "OK",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  onPressed: () => Navigator.pop(context),
                                  width: 120,
                                )
                              ],
                            ).show();
                          },
                          child: Text("Read description",
                              style: TextStyle(color: Colors.white)))
                      // Text(
                      //   bookModel.description,
                      //   maxLines: 3,
                      //   overflow: TextOverflow.ellipsis,
                      //   style: TextStyle(fontSize: 16.0),
                      // )
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 80.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0.0, 2.0),
                            blurRadius: 6.0)
                      ],
                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 10.0),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1.0, color: Colors.grey),
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.red),
                              child: Row(
                                children: [
                                  Text(
                                    "Want to read",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Icon(
                                    Icons.arrow_downward,
                                    color: Colors.white,
                                    size: 16.0,
                                  )
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 10.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.white,
                                  border: Border.all(
                                      width: 3.0, color: Colors.grey)),
                              child: Row(
                                children: [
                                  Text(
                                    "Get a copy",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Icon(
                                    Icons.copy_sharp,
                                    color: Colors.black,
                                    size: 16.0,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: 10,
                    right: 10,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image(
                        width: 60.0,
                        height: 60.0,
                        fit: BoxFit.cover,
                        image: AssetImage(bookModel.imageAuthor),
                      ),
                    ))
              ],
            )
          ],
        )
      ],
    ));
  }
}
