import 'package:emran92/locator.dart';
import 'package:emran92/services/navigation_services.dart';
import 'package:emran92/widgets/navigation_bar/navbar_item.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final String navigationPath;

  const DrawerItem(this.title, this.icon,this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60),
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            color: Colors.white,
          ),
          SizedBox(width: 30),
          GestureDetector(
            onTap: (){
              locator<NavigationService>().navigateTo(navigationPath);
            },
              child: NavBarItem(title,navigationPath)),
        ],
      ),
    );
  }
}
