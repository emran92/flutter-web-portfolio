import 'package:emran92/routing/route_name.dart';
import 'package:emran92/views/contact/contact.dart';
import 'package:emran92/views/homepage/home_content/home_page_main.dart';
import 'package:emran92/views/portfolio/portfolio.dart';
import 'package:emran92/views/resume/resume.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: missing_return
Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomePage(), settings.name);
    case ResumeRoute:
      return _getPageRoute(Resume(), settings.name);
    case PortfolioRoute:
      return _getPageRoute(Portfolio(), settings.name);
    case ContactRoute:
      return _getPageRoute(Contact(), settings.name);
    default:
  }
}

PageRoute _getPageRoute(Widget child, String routeName) {
  return _FadeRoute(child: child, routeName: routeName);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;

  _FadeRoute({this.child, this.routeName})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => child,
          settings: RouteSettings(name: routeName),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              ScaleTransition(
                scale: animation,
                child: child,
            ),
        );
}
