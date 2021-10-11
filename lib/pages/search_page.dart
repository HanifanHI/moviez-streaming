import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:moviez_streaming/shared/theme.dart';
import 'package:moviez_streaming/widget/disney_widget.dart';

class SearchPage extends StatelessWidget {
  static const routeNameSearchPage = '/search-page';
  @override
  Widget build(BuildContext context) {
    // * SEARCH
    Widget search() {
      return Container(
        height: 45,
        margin: EdgeInsets.only(top: 38),
        padding: EdgeInsets.only(left: 22, top: 11, bottom: 11, right: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: TextFormField(
          cursorColor: kPrimaryColor,
          decoration: InputDecoration(
            border: InputBorder.none,
            icon: Container(
              height: 22,
              width: 22,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/Search.png',
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }

    // * SEARCH RESULT
    Widget searchResult() {
      return Container(
        margin: EdgeInsets.only(top: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Search Result (3)',
              style: titleTextStyle.copyWith(
                fontSize: 20,
                fontWeight: black,
              ),
            ),
            DisneyWidget(
              imageUrl: 'assets/images/image5.png',
              title: 'The Dark II',
              subTitle: 'Horror',
              rating: 4,
            ),
            DisneyWidget(
              imageUrl: 'assets/images/image6.png',
              title: 'The Dark Knight',
              subTitle: 'Heroes',
              rating: 5,
            ),
            DisneyWidget(
              imageUrl: 'assets/images/image7.png',
              title: 'The Dark Tower',
              subTitle: 'Action',
              rating: 4,
            ),
          ],
        ),
      );
    }

    // * BUTTON
    Widget button() {
      return Container(
        margin: EdgeInsets.only(top: 73),
        width: 220,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: kPrimaryColor,
        ),
        child: Center(
          child: Text(
            'Suggest Movie',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          children: [
            search(),
            searchResult(),
            button(),
          ],
        ),
      ),
    );
  }
}
