import 'package:flutter/material.dart';
import 'package:moviez_streaming/pages/home_page.dart';
import 'pages/search_page.dart';

// import 'pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        fontFamily: 'Avenir',
      ),
      routes: {
        SearchPage.routeNameSearchPage: (context) => SearchPage(),
      },
    );
  }
}
