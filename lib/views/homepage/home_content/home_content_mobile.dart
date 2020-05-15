import 'package:emran92/services/navigation_services.dart';
import 'package:emran92/views/homepage/home_button/home_button.dart';
import 'package:emran92/views/homepage/home_content/introduction.dart';
import 'package:flutter/material.dart';

import '../../../locator.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Introduction(),
        SizedBox(
          height: 100,
        ),
        GestureDetector(
          onTap: (){
            locator<NavigationService>().navigateTo('contact');
          },
          child: HomeButton('Hire Me'),
        ),
      ],
    );
  }
}
