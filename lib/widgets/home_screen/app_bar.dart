import 'package:flutter/material.dart';

class HomeScreenAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Icon(
              Icons.menu,
              color: Colors.red.shade700,
            ),
          ),
          Row(
            children: [
              Container(child: Icon(Icons.search, color: Colors.grey.shade600)),
              SizedBox(
                width: 20.0,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image(
                    width: 45.0,
                    height: 45.0,
                    image: AssetImage("images/profile.jpg")),
              )
            ],
          )
        ],
      ),
    );
  }
}
