import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:schoolapp/models/courses.dart';
import 'package:schoolapp/screens/home/tuesday/course_tile.dart';


class TuesdayTemplate extends StatefulWidget {
  @override
  _TuesdayTemplateState createState() => _TuesdayTemplateState();
}

class _TuesdayTemplateState extends State<TuesdayTemplate> {
  @override
  Widget build(BuildContext context) {
    final tuesday = Provider.of<List<TuesdayTimetable>>(context);

    return ListView.builder(
      itemCount: tuesday.length,
      itemBuilder: (context, index) {
        return TuesdayTile(course: tuesday[index]);
      },

    );
  }
}
