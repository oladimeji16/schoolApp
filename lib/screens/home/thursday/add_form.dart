import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:schoolapp/models/courses.dart';
import 'package:schoolapp/models/user.dart';
import 'package:schoolapp/services/database.dart';
import 'package:schoolapp/shared/constant.dart';
import 'package:schoolapp/shared/loading.dart';

class AddForm extends StatefulWidget {
  @override
  _AddFormState createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {

  final _formKey = GlobalKey<FormState>();

  String _currentTime;
  String _currentCourse;

  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);

    return StreamBuilder<UserData>(
      stream: DatabaseService(uid: user.uid).userData,
      builder: (context, snapshot) {
        if(snapshot.hasData) {

          UserData userData = snapshot.data;

          return Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Text('Edit your timetable',
                  style: TextStyle(fontSize: 18.0),
                ),
                SizedBox(height: 20.0,),
                TextFormField(
                  initialValue: userData.time,
                  decoration: textInputDecoration,
                  validator: (val) => val.isEmpty ? 'Please enter time of course' : null,
                  onSaved: (val) => setState(() => _currentTime = val),
                ),
                SizedBox(height: 20.0,),
                TextFormField(
                  initialValue: userData.course,
                  decoration: textInputDecoration,
                  validator: (val) => val.isEmpty ? 'Please enter course code' : null,
                  onSaved: (val) => setState(() => _currentCourse = val),
                ),
                RaisedButton(
                  color: Colors.blue,
                  child: Text('Save',
                    style: TextStyle(color: Colors.white),),
                  onPressed: () async {
                    this._formKey.currentState.save();
                    if(_formKey.currentState.validate()) {
                      await DatabaseService(uid: user.uid).createUserDataThursday(_currentTime?? userData.time, _currentCourse?? userData.course);
                      Navigator.pop(context);
                    }
                  },
                ),
              ],
            ),
          );
        }else{
          return Loading();
        }
      },
    );
  }
}
