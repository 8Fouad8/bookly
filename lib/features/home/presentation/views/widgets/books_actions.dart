import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksActions extends StatelessWidget {
  const BooksActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              onPressed: () {},
              text: '19.99 \$',
              textStyle: Styles.textStyle18.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w900,
              ),
              backgroundColor: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                bottomLeft: Radius.circular(24),
              ),
            ),
          ),  Expanded(
            child: CustomButton(
              onPressed: () {},
              text: 'Free preview',
              textStyle: Styles.textStyle16.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w900,
              ),
              backgroundColor: Color.fromRGBO(239, 130, 98, 1),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
