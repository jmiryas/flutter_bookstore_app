import 'package:flutter/material.dart';

import '../../data/book_data.dart';
import '../../models/author_model.dart';

class AuthorsToFollow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0))),
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Authors to follow",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Show All",
                  style: TextStyle(fontSize: 16.0, color: Colors.grey),
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 100.0,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    AuthorModel authorModel = listOfAuthors[index];

                    return Container(
                      width: 300.0,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                      margin: EdgeInsets.only(right: 10.0),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                border:
                                    Border.all(color: Colors.grey, width: 3.0)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image(
                                width: 80.0,
                                height: 80.0,
                                fit: BoxFit.cover,
                                image: AssetImage(authorModel.image),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                              child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  authorModel.name,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      letterSpacing: 1.2,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5.0),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.book_sharp,
                                      color: Colors.grey.shade700,
                                      size: 18.0,
                                    ),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    Text(
                                      "${authorModel.books.length} books",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.grey.shade700),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ))
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
