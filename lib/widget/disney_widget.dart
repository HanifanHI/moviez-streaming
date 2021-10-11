import 'package:flutter/material.dart';
import 'package:moviez_streaming/shared/theme.dart';

class DisneyWidget extends StatelessWidget {
  // * ATRIBUTE
  final String imageUrl;
  final String title;
  final String subTitle;
  final int rating;

  // * CONSTRUCTOR
  DisneyWidget({
    required this.imageUrl,
    required this.title,
    required this.subTitle,
    this.rating = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 127,
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 127,
            margin: EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
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
              SizedBox(
                height: 20,
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
