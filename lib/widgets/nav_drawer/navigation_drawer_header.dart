import 'package:emran92/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class NavigationDrawerHeader extends StatelessWidget {
  const NavigationDrawerHeader({Key key}) : super(key: key);
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
      height: 150,
      color: primaryColor,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'EMRAN IMAM',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
            ],
          ),
//          Text(
//            'TAP HERE',
//            style: TextStyle(color: Colors.white),
//          )
        ],
      ),
    );
  }
}