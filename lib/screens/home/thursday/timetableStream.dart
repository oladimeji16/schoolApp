import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schoolapp/models/courses.dart';
import 'package:schoolapp/screens/home/monday/add_form.dart';
import 'package:schoolapp/screens/home/monday/timetableTemplate.dart';
import 'package:schoolapp/services/database.dart';
import 'package:provider/provider.dart';




class TimetableStream extends StatefulWidget {
  @override
  _TimetableStreamState createState() => _TimetableStreamState();
}


class _TimetableStreamState extends State<TimetableStream> {
  @override
  Widget build(BuildContext context) {

    void _showEditPanel() {
      showModalBottomSheet(context: context, builder: (context){
        return Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
          child: AddForm(),
        );
      });
    }
    return StreamProvider<List<ThursdayTimetable>>.value(
      value: DatabaseService().thursday,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Timetable'),
          centerTitle: true,
          backgroundColor: Colors.blue[800],
          elevation: 5.0,
        ),

        body: TemplateTimetable(),

        floatingActionButton: FloatingActionButton.extended(
            onPressed: () => _showEditPanel(),
            icon: Icon(Icons.add),
            label: Text('add'),
      ),

    ));
  }
}


