import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:schoolapp/models/courses.dart';
import 'package:schoolapp/screens/home/friday/course_tile.dart';


class FridayTemplate extends StatefulWidget {
  @override
  _FridayTemplateState createState() => _FridayTemplateState();
}

class _FridayTemplateState extends State<FridayTemplate> {
  @override
  Widget build(BuildContext context) {
    final friday = Provider.of<List<FridayTimetable>>(context) ?? [];

    return ListView.builder(
      itemCount: friday.length,
      itemBuilder: (context, index) {
        return FridayTile(course: friday[index]);
      },

    );
  }
}
