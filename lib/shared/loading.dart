import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:schoolapp/screens/home/input_page.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: boxColor,
      child: Center(
        child: SpinKitChasingDots(
          color: textColor,
          size: 50.0,
        ),
      ),
    );
  }
}
