import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:schoolapp/models/courses.dart';
import 'package:schoolapp/screens/home/monday/course_tile.dart';

class MondayTemplate extends StatefulWidget {
  @override
  _MondayTemplateState createState() => _MondayTemplateState();
}

class _MondayTemplateState extends State<MondayTemplate> {
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
