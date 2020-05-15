import 'package:emran92/locator.dart';
import 'package:emran92/routing/route.dart';
import 'package:emran92/routing/route_name.dart';
import 'package:emran92/services/navigation_services.dart';
import 'package:emran92/widgets/centered_view.dart';
import 'package:emran92/widgets/nav_drawer/navigation_drawer.dart';
import 'package:emran92/widgets/navigation_bar/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LayoutTemplate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer()
            : Container(),
        backgroundColor: Color(0xff212121),
        body: CenteredView(
          child: Column(
            children: <Widget>[
              NavigationBar(),
              Expanded(
                child: Navigator(
                  key: locator<NavigationService>().navigatorKey,
                  onGenerateRoute: generateRoute,
                  initialRoute: HomeRoute,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
