import 'package:emran92/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class SkillWidget extends StatelessWidget {
  SkillWidget({this.skillText, this.skillValue});

  final String skillText;
  final int skillValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          child: Text(
            skillText,
            style: GoogleFonts.courierPrime(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ),
        Expanded(
          child: FAProgressBar(
            size: 15,
            currentValue: skillValue,
            displayText: '%',
            progressColor: primaryColor,
          ),
        ),
      ],
    );
  }
}
