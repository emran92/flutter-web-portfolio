import 'package:emran92/routing/route_name.dart';
import 'package:flutter/material.dart';

import 'drawer_item.dart';
import 'navigation_drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
          color: Color(0xff212121),
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)]),
      child: Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          DrawerItem('Home', Icons.home,HomeRoute),
          DrawerItem('Resume', Icons.featured_video,ResumeRoute),
          DrawerItem('Portfolio', Icons.laptop_chromebook,PortfolioRoute,),
          DrawerItem('Contact', Icons.mail,ContactRoute),
        ],
      ),
    );
  }
}