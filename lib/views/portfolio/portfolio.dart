import 'package:emran92/views/portfolio/portfolio_mobile.dart';
import 'package:emran92/views/portfolio/portfolio_tablet_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      physics: AlwaysScrollableScrollPhysics(),
      child: ScreenTypeLayout(
        mobile: PortfolioMobile(),
        desktop: PortfolioTabletDesktop(),
      ),
    );
  }
}


