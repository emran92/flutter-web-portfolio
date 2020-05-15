import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Introduction extends StatelessWidget {
  const Introduction({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                'EMRAN IMAM',
                style: GoogleFonts.courierPrime(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  height: 0.9,
                  fontSize: 80,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 250.0,
            child: TyperAnimatedTextKit(
                onTap: null,
                speed: Duration(milliseconds: 300),
                text: [
                  "Engineer",
                  "Programmer",
                  "Web Developer",
                  "Mobile App Developer",
                ],
                textStyle: GoogleFonts.cambo(
                  color: Colors.white,
                  height: 1.7,
                  fontSize: 25,
                ),
                textAlign: TextAlign.start,
                alignment: AlignmentDirectional.topStart // or Alignment.topLeft
                ),
          ),
        ],
      ),
    );
  }
}
