import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'home_button_desktop.dart';
import 'home_button_mobile.dart';

class HomeButton extends StatelessWidget {
  final String title;
  const HomeButton(this.title);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: HomeButtonMobile(title),
      tablet: HomeButtonTabletDesktop(title),
    );
  }
}