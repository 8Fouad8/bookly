import 'package:bookly/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class ImageBookCover extends StatelessWidget {
  const ImageBookCover({super.key, required this.circularRadius});
 final double circularRadius;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5/4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(circularRadius),
          color: Colors.pink,
          image: DecorationImage(
            image: AssetImage(AssetsData.testImage),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
