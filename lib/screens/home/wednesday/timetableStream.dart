import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schoolapp/models/courses.dart';
import 'package:schoolapp/screens/home/monday/add_form.dart';
import 'package:schoolapp/screens/home/wednesday/timetableTemplate.dart';
import 'package:schoolapp/services/database.dart';
import 'package:provider/provider.dart';




class WednesdayStream extends StatefulWidget {
  @override
  _WednesdayStreamState createState() => _WednesdayStreamState();
}


class _WednesdayStreamState extends State<WednesdayStream> {
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
    return StreamProvider<List<WednesdayTimetable>>.value(
      value: DatabaseService().wednesday,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Timetable'),
          centerTitle: true,
          backgroundColor: Colors.blue[800],
          elevation: 5.0,
        ),

        body: WednesdayTemplate(),

        floatingActionButton: FloatingActionButton.extended(
            onPressed: () => _showEditPanel(),
            icon: Icon(Icons.add),
            label: Text('add'),
      ),

    ));
  }
}


