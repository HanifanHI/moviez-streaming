import 'package:flutter/material.dart';
import 'package:moviez_streaming/shared/theme.dart';

class ContentWidget extends StatelessWidget {
  // * ATRIBUTE
  final String imageUrl;
  final String title;
  final String subTitle;
  final int rating;

  // * CONSTRUCTOR
  ContentWidget({
    required this.imageUrl,
    required this.title,
    required this.subTitle,
    this.rating = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 24),
      width: 300,
      height: 279,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 19),
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: titleTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: book,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    subTitle,
                    style: subTitleTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: roman,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: rating >= 1 ? Colors.amber : Colors.grey,
                    size: 18,
                  ),
                  Icon(
                    Icons.star,
                    color: rating >= 2 ? Colors.amber : Colors.grey,
                    size: 18,
                  ),
                  Icon(
                    Icons.star,
                    color: rating >= 3 ? Colors.amber : Colors.grey,
                    size: 18,
                  ),
                  Icon(
                    Icons.star,
                    color: rating >= 4 ? Colors.amber : Colors.grey,
                    size: 18,
                  ),
                  Icon(
                    Icons.star,
                    color: rating >= 5 ? Colors.amber : Colors.grey,
                    size: 18,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
