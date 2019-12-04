import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:schoolapp/models/courses.dart';
import 'package:schoolapp/screens/home/thursday/course_tile.dart';
import 'package:schoolapp/screens/home/wednesday/course_tile.dart';

class TemplateTimetable extends StatefulWidget {
  @override
  _TemplateTimetableState createState() => _TemplateTimetableState();
}

class _TemplateTimetableState extends State<TemplateTimetable> {
  @override
  Widget build(BuildContext context) {
    final thursday = Provider.of<List<ThursdayTimetable>>(context) ?? [];

    return ListView.builder(
      itemCount: thursday.length,
      itemBuilder: (context, index) {
        return ThursdayTile(course: thursday[index]);
      },

    );
  }
}
