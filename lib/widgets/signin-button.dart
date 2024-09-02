import 'package:flutter/material.dart';
import 'package:todo_app_flutter/widgets/custom_button.dart';

class SocialButton extends CustomButtonWidget {
  SocialButton({
    required String assetName,
    required String text,
    required Color color,
    required Color textColor,
    required VoidCallback onPressed,
  }) : super(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset(assetName),
              Text(text,style: TextStyle(fontSize: 16),),
              Opacity(
                opacity: 0,
                child: Image.asset(assetName),
              ),
            ],
          ),
          color: color,
          onPressed: onPressed,
        );
}
