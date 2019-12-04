import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schoolapp/screens/home/input_page.dart';
import 'package:schoolapp/shared/constant.dart';
import 'input_page.dart';

class Subjects extends StatefulWidget {

  @override
  _SubjectsState createState() => _SubjectsState();
}

class _SubjectsState extends State<Subjects> {
  String input1 = "";
  String input2 = "";
  List courseCode = List();
  List courseContent = List();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    courseCode.add("");
    courseContent.add("");
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Courses'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: textColor,
        foregroundColor: boxColor,
        hoverElevation: 20.0,
        child: Icon(Icons.add),
        onPressed: () {
          showDialog(context: context, builder: (context){
            return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              backgroundColor: boxColor,
              title: Text("Add more Courses"),
              content: Form(
                child: Column(
                  children: <Widget>[
                    TextField(
                      onChanged: (String value) {
                        input1 = value;
                      },
                      maxLines: 3,
                      decoration: textInputDecoration.copyWith(hintText: 'Course Code/Course Title',
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    TextField(
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Roboto',
                      ),
                      onChanged: (String value) {
                        input2 = value;
                      },
                      maxLines: 13,
                      decoration: textInputDecoration.copyWith(hintText: 'Course Content'),
                    ),
                  ],
                ),
              ),
              actions: <Widget>[
                FlatButton(
                  textColor: textColor,
                  child: Text("Add"),
                  onPressed: () {
                    setState(() {
                      courseCode.add(input1);
                      courseContent.add(input2);
                    });
                    Navigator.of(context).pop();
                  },
                ),
              ],


            );
          });
        },
      ),

      body: ListView.builder(
        itemCount: courseCode.length,
          itemBuilder: (context, index) {
            return Dismissible(
              key: Key(courseCode[index]),
              child: ListTile(
                title: Text(courseCode[index],style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),) ,
                subtitle: Text(courseContent[index]),
                trailing: Icon(Icons.edit), onTap: (){
                  return AlertDialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    backgroundColor: boxColor,
                    title: Text("Add more Courses"),
                    content: Form(
                      child: Column(
                        children: <Widget>[
                          TextField(
                            onChanged: (String value) {
                              input1 = value;
                            },
                            maxLines: 1,
                            decoration: textInputDecoration.copyWith(hintText: 'Course Code/Course Title',
                            ),
                          ),
                          SizedBox(height: 10.0,),
                          TextField(
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Roboto',
                            ),
                            onChanged: (String value) {
                              input2 = value;
                            },
                            maxLines: 13,
                            decoration: textInputDecoration.copyWith(hintText: 'Course Content'),
                          ),
                        ],
                      ),
                    ),
                    actions: <Widget>[
                      FlatButton(
                        textColor: textColor,
                        child: Text("Add"),
                        onPressed: () {
                          setState(() {
                            courseCode.add(input1);
                            courseContent.add(input2);
                          });
                          Navigator.of(context).pop();
                        },
                      ),
                    ],


                  );

              },
              ),
              onDismissed: (right) {
                setState(() {
                  courseCode.removeAt(index);
                  courseContent.removeAt(index);
                });
              },
            );
          },
      ),
    );
  }
}


