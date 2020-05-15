import 'package:emran92/constants/app_color.dart';
import 'package:flutter/material.dart';

class HomeButtonMobile extends StatelessWidget {
  final String title;
  const HomeButtonMobile(this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      alignment: Alignment.center,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w800,
          color: Colors.white,
        ),
      ),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}