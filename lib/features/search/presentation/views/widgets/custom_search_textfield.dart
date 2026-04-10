import 'package:flutter/material.dart';

class CustomSearchTextfield extends StatelessWidget {
  const CustomSearchTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration:  InputDecoration(
        hintText: 'Search',
        hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
        suffixIcon: IconButton(icon:const Icon(Icons.search), onPressed: (){
        }),
        border: buildOutlineBorder(),
        focusedBorder: buildOutlineBorder(),
        enabledBorder: buildOutlineBorder(),
        filled: false,
      ),
    );
  }

  OutlineInputBorder buildOutlineBorder() {
    return  OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: Colors.grey, width: 2),
    );
  }
}
