import 'package:bookly/features/home/presentation/views/widgets/image_book_cover.dart';
import 'package:flutter/material.dart';

class SimilarBooksListviewItem extends StatelessWidget {
  const SimilarBooksListviewItem({super.key});

  @override
  Widget build(BuildContext context) {
 return SizedBox(
      height: MediaQuery.of(context).size.height * .14,
      child: ListView.builder(
      physics: BouncingScrollPhysics(),
      
        scrollDirection: Axis.horizontal,
        itemCount: 4,
         itemBuilder: (BuildContext context, int index) {

          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: ImageBookCover(circularRadius: 16,),
          );
        },
      ),
    );}}