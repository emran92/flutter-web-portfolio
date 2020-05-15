import 'package:flutter/material.dart';

class CenteredView extends StatelessWidget {
  final Widget child;
  const CenteredView({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: ExactAssetImage('images/background.jpg'),
                fit: BoxFit.cover),
          ),
        ),
        Container(
          color: Color.fromRGBO(255, 255, 255, 0.0),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 70.0, vertical: 60),
          alignment: Alignment.center,
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 1200),
            child: child,
          ),
        ),
      ],
    );
  }
}