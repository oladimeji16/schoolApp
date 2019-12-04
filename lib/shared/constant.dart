import 'package:flutter/material.dart';
import 'package:schoolapp/screens/home/input_page.dart';

const textInputDecoration = InputDecoration(

  hintStyle:
  TextStyle(
    color: boxColor,
  ),
  fillColor: textColor,
  filled: true,
  enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: boxColor, width: 2.0,),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: boxColor, width: 2.0,),
  )
);