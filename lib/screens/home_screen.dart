import 'package:flutter/material.dart';

import '../widgets/home_screen/app_bar.dart';
import '../widgets/home_screen/discover_books.dart';
import '../widgets/home_screen/discover_book_list.dart';
import '../widgets/home_screen/authors_to_follow.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0.0, 2.0),
                        blurRadius: 6.0)
                  ],
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(30.0))),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 40.0),
                child: Column(
                  children: [
                    HomeScreenAppBar(),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Discover books",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 35.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.0),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    DiscoverBooks()
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20.0,
            ),
          ),
          DiscoverBookList(),
          AuthorsToFollow()
        ],
      ),
    );
  }
}
