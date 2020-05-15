import 'package:emran92/locator.dart';
import 'package:emran92/services/navigation_services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  const NavBarItem(this.title,this.navigationPath);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: GestureDetector(
          onTap: (){
            locator<NavigationService>().navigateTo(navigationPath);
          },
          child: Text(
            title,
            style: GoogleFonts.righteous(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}