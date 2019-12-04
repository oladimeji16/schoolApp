import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:schoolapp/models/courses.dart';
import 'package:schoolapp/screens/home/monday/course_tile.dart';

class TemplateTimetable extends StatefulWidget {
  @override
  _TemplateTimetableState createState() => _TemplateTimetableState();
}

class _TemplateTimetableState extends State<TemplateTimetable> {
  @override
  Widget build(BuildContext context) {
    final timetable = Provider.of<List<MondayTimetable>>(context) ?? [];

    return ListView.builder(
      itemCount: timetable.length,
      itemBuilder: (context, index) {
        return MondayTile(course: timetable[index]);
      },

    );
  }
}
