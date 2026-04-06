import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed, required this.text, required this.backgroundColor,  this.borderRadius, this.textStyle});
  final void Function()? onPressed;
  final String text;
final Color backgroundColor;
final TextStyle? textStyle;
final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ElevatedButton(onPressed: onPressed,
      
      style: ElevatedButton.styleFrom(
      
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius?? BorderRadius.circular(16),
        ),
      ), child: Text(text, style: textStyle,),),
    );
  }
}