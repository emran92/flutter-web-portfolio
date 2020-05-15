import 'package:emran92/constants/app_color.dart';
import 'package:flutter/material.dart';

InputDecoration kInputDecoration(
    {String labelText, hintText, Widget prefix}) {
  return InputDecoration(
    prefix: prefix,
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(
        color: Colors.blueAccent,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(
        color: primaryColor,
        width: 2.0,
      ),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(15.0)),
      borderSide: const BorderSide(color: Colors.white, width: 1.0),
    ),
    labelText: labelText,
    hintText: hintText,
    hintStyle: TextStyle(color: Colors.white70),
    labelStyle: TextStyle(fontSize: 15.0, color: Colors.white),
  );
}