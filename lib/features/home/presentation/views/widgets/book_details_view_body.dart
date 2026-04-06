import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:bookly/features/home/presentation/views/widgets/image_book_cover.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width ;
    return  Column(
      children: [
CustomBookDetailsAppbar() ,
Padding(
  padding: EdgeInsets.symmetric(horizontal: width * .24),
  child: ImageBookCover(circularRadius: 24,),
) ,
SizedBox(height: 43,),
Text('The Jungle Book' ,style: Styles.textStyle30,),
SizedBox(height: 6,),
Opacity(
  
  opacity: .7,
  child: Text('Rudyard Kipling' ,style: Styles.textStyle18.copyWith(
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.w500,
  ),)),const SizedBox(
          height: 18,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
    ],
    );
  }
}