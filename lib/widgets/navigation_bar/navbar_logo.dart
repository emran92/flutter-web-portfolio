import 'package:emran92/locator.dart';
import 'package:emran92/services/navigation_services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: GestureDetector(
          onTap: (){
            locator<NavigationService>().navigateTo('home');
          },
          child: Text(
            'EMRAN IMAM',
            style: GoogleFonts.charmonman(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              fontSize: 17.5,
            ),
          ),
        ),
      ),
    );
  }
}