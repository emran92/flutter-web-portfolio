import 'package:emran92/services/navigation_services.dart';
import 'package:emran92/views/homepage/home_button/home_button.dart';
import 'package:emran92/views/homepage/home_content/introduction.dart';
import 'package:flutter/material.dart';

import '../../../locator.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Introduction(),
        Expanded(
          child: Center(
            child: GestureDetector(
              onTap: (){
                locator<NavigationService>().navigateTo('contact');
              },
              child: HomeButton('Hire Me'),
            ),
          ),
        )
      ],
    );
  }
}
