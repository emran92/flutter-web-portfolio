import 'package:emran92/routing/route_name.dart';
import 'package:emran92/widgets/navigation_bar/navbar_item.dart';
import 'package:emran92/widgets/navigation_bar/navbar_logo.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key key}) : super(key: key);

  _launchGit() async {
    const url = 'https://www.github.com/emran92';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  _launchFb() async {
    const url = 'https://www.fb.com/emran.imam';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  _launchGMail() async {
    const url = 'mailto:emran.imam@gmail.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              NavBarItem('Resume', ResumeRoute),
              SizedBox(
                width: 12,
              ),
              NavBarItem('Portfolio', PortfolioRoute),
              SizedBox(
                width: 12,
              ),
              NavBarItem('Contact', ContactRoute),
              SizedBox(
                width: 12,
              ),
              GestureDetector(
                onTap: _launchGit,
                child: Icon(
                  FontAwesomeIcons.github,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              SizedBox(
                width: 12,
              ),
              GestureDetector(
                onTap: _launchFb,
                child: Icon(
                  FontAwesomeIcons.facebookSquare,
                  color: Color(0xff3b5998),
                  size: 20,
                ),
              ),
              SizedBox(
                width: 12,
              ),
              GestureDetector(
                onTap: _launchGMail,
                child: Icon(
                  FontAwesomeIcons.google,
                  color: Colors.red,
                  size: 20,
                ),
              ),
              SizedBox(
                width: 12,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
