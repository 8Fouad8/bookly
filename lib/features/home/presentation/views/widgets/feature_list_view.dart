import 'package:bookly/features/home/presentation/views/widgets/image_list_item.dart';
import 'package:flutter/material.dart';

class FeatureListView extends StatelessWidget {
  const FeatureListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .27,
      child: ListView.builder(
      physics: BouncingScrollPhysics(),
      
        scrollDirection: Axis.horizontal,
        itemCount: 10,
         itemBuilder: (BuildContext context, int index) {

          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: ImageListItem(),
          );
        },
      ),
    );
  }
}
