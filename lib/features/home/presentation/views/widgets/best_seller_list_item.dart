import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assets_data.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellerListItem extends StatelessWidget {
  const BestSellerListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              height: 120,
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage(AssetsData.testImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .6,
                  child: const Text(
                    "Harry Potter and the Goblet of Fire",
                    style: Styles.textStyle20,
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  "J.K. Rowling",
                  style: Styles.textStyle14.copyWith(
                    color: Colors.grey,
                    fontFamily: kGtSectraFine,
                  ),
                ),
                SizedBox(height: 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "19.99 \$",
                      style: Styles.textStyle16.copyWith(
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    BookRating(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BookRating extends StatelessWidget {
  const BookRating({super.key,  this.mainAxisAlignment= MainAxisAlignment.start});
final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const FaIcon(size: 14,
          FontAwesomeIcons.solidStar,color: Colors.amber),
        SizedBox(width: 5),
        Text("4.8", style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600)),
        SizedBox(width: 5),
        Text("(2123)", style: Styles.textStyle16.copyWith(color: Colors.grey)),
      ],
    );  
  }
}
