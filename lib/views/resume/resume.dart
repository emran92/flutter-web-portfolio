
import 'package:emran92/views/resume/resume_mobile.dart';
import 'package:emran92/views/resume/resume_tablet_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Resume extends StatefulWidget {
  @override
  _ResumeState createState() => _ResumeState();
}

class _ResumeState extends State<Resume> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      physics: AlwaysScrollableScrollPhysics(),
      child: ScreenTypeLayout(
        mobile: ResumeMobile(),
        desktop: ResumeTabletDesktop(),
      ),
    );
  }
}
