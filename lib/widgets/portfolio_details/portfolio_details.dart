import 'package:flutter/material.dart';

class PortfolioDetails extends StatelessWidget {
  PortfolioDetails({this.titleText, this.detailsText, this.madeWithText});

  final String titleText;
  final String detailsText;
  final String madeWithText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          titleText,
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Text(
          detailsText,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        Text(
          madeWithText,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 12,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}