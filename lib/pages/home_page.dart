import 'package:flutter/material.dart';
import 'package:moviez_streaming/pages/search_page.dart';
import 'package:moviez_streaming/shared/theme.dart';
import 'package:moviez_streaming/widget/content_widget.dart';
import 'package:moviez_streaming/widget/disney_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // * HEADER
    Widget header() {
      return Container(
        margin: EdgeInsets.only(left: 24, right: 24, top: 30),
        height: 64,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Moviez',
                  style: titleTextStyle.copyWith(
                    fontSize: 28,
                    fontWeight: black,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Watch much easier',
                  style: subTitleTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: roman,
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, SearchPage.routeNameSearchPage);
              },
              child: Container(
                width: 22,
                height: 22,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/Search.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    // * CONTENT
    Widget content() {
      return Container(
        margin: EdgeInsets.only(left: 24, top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ContentWidget(
                imageUrl: 'assets/images/image1.png',
                title: 'John Wick 4',
                subTitle: 'Action, Crime',
                rating: 5,
              ),
              ContentWidget(
                imageUrl: 'assets/images/image2.png',
                title: 'Bohemian',
                subTitle: 'Documentary',
                rating: 4,
              ),
            ],
          ),
        ),
      );
    }

    // * FROM DISNEY
    Widget disney() {
      return Container(
        margin: EdgeInsets.only(left: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              'From Disney',
              style: titleTextStyle.copyWith(
                fontSize: 24,
                fontWeight: black,
              ),
            ),
            DisneyWidget(
              imageUrl: 'assets/images/image4.png',
              title: 'Mulan Session',
              subTitle: 'History, War',
              rating: 3,
            ),
            DisneyWidget(
              imageUrl: 'assets/images/image5.png',
              title: 'Beauty & Beast',
              subTitle: 'Sci-Fiction',
              rating: 5,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: ListView(
        children: [
          header(),
          content(),
          disney(),
        ],
      ),
    );
  }
}
