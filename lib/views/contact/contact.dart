import 'package:emran92/views/contact/contact_mobile.dart';
import 'package:emran92/views/contact/contact_tablet_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  String name;
  String email;
  String query;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      physics: AlwaysScrollableScrollPhysics(),
      child: ScreenTypeLayout(
        mobile: ContactMobile(),
        desktop: ContactTabletDesktop(),
      ),
    );
  }
}
