import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/book_data.dart';
import '../../models/book_model.dart';
import '../../screens/book_details.dart';

class DiscoverBookList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 400.0,
        padding: EdgeInsets.only(left: 20.0),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: listOfBooks.length,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              BookModel bookModel = listOfBooks[index];

              return GestureDetector(
                onTap: () {
                  Get.to(BookDetails(), arguments: bookModel);
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        height: 300.0,
                        width: 250.0,
                        margin: EdgeInsets.only(right: 20.0),
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0.0, 2.0),
                              blurRadius: 6.0)
                        ]),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image(
                              fit: BoxFit.cover,
                              image: AssetImage(bookModel.image)),
                        )),
                    SizedBox(
                      height: 20.0,
                    ),
                    Expanded(
                        child: Container(
                      width: 250.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            bookModel.name,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                letterSpacing: 1.2,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            bookModel.author,
                            style: TextStyle(
                                fontSize: 16.0, color: Colors.grey.shade600),
                          ),
                        ],
                      ),
                    ))
                  ],
                ),
              );
            }),
      ),
    );
  }
}
