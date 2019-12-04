import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:schoolapp/models/courses.dart';
import 'package:schoolapp/screens/home/saturday/course_tile.dart';


class TemplateTimetable extends StatefulWidget {
  @override
  _TemplateTimetableState createState() => _TemplateTimetableState();
}

class _TemplateTimetableState extends State<TemplateTimetable> {
  @override
  Widget build(BuildContext context) {
    final saturday = Provider.of<List<SaturdayTimetable>>(context) ?? [];

    return ListView.builder(
      itemCount: saturday.length,
      itemBuilder: (context, index) {
        return SaturdayTile(course: saturday[index]);
      },

    );
  }
}
