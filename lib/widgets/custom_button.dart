import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  CustomButtonWidget({
    required this.child,
    required this.color,
    required this.onPressed,
  });
  final Widget child;
  final Color color;
  final VoidCallback onPressed;


  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: color,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))
      ),
      onPressed: onPressed,
      child: child,
    );    
  }
}