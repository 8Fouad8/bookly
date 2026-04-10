import 'package:bookly/features/search/presentation/views/widgets/custom_search_textfield.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Search View Body'),
        const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:30),
            child: CustomSearchTextfield(),
          )
      ],
    );
  }
}