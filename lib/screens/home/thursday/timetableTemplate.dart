import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:schoolapp/models/courses.dart';
import 'package:schoolapp/screens/home/thursday/course_tile.dart';

class ThursdayTemplate extends StatefulWidget {
  @override
  _ThursdayTemplateState createState() => _ThursdayTemplateState();
}

class _ThursdayTemplateState extends State<ThursdayTemplate> {
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
