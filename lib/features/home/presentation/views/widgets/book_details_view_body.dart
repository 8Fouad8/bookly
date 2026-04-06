import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_actions.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:bookly/features/home/presentation/views/widgets/image_book_cover.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books_listview_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      physics: NeverScrollableScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              CustomBookDetailsAppbar(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * .28),
                child: ImageBookCover(circularRadius: 24),
              ),
              SizedBox(height: 32),
              Text('The Jungle Book', style: Styles.textStyle30),
              SizedBox(height: 6),
              Opacity(
                opacity: .7,
                child: Text(
                  'Rudyard Kipling',
                  style: Styles.textStyle18.copyWith(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 18),
              const BookRating(mainAxisAlignment: MainAxisAlignment.center),
              const SizedBox(height: 24),
              const BooksActions(),
              Expanded(child: const SizedBox(height: 37)),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'You can also like',
                  style: Styles.textStyle16.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 16),

              SimilarBooksListviewItem(),
            ],
          ),
        ),
      ],
    );
  }
}
