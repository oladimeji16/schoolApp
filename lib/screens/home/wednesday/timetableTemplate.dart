import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:schoolapp/models/courses.dart';
import 'package:schoolapp/screens/home/wednesday/course_tile.dart';

class WednesdayTemplate extends StatefulWidget {
  @override
  _WednesdayTemplateState createState() => _WednesdayTemplateState();
}

class _WednesdayTemplateState extends State<WednesdayTemplate> {
  @override
  Widget build(BuildContext context) {
    final wednesday = Provider.of<List<WednesdayTimetable>>(context) ?? [];

    return ListView.builder(
      itemCount: wednesday.length,
      itemBuilder: (context, index) {
        return WednesdayTile(course: wednesday[index]);
      },

    );
  }
}
