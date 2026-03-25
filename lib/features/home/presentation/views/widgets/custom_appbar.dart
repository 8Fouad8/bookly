
import 'package:bookly/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
      child: Row(
        children: [
          Image.asset(AssetsData.logo, height:24,),
          Spacer(),
          IconButton(onPressed: (){}, icon: const Icon(Icons.search)),
        ],
      ),
    );
  }
}