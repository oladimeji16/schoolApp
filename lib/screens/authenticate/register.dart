import 'package:flutter/material.dart';
import 'package:schoolapp/screens/home/input_page.dart';
import 'package:schoolapp/services/auth.dart';
import 'package:schoolapp/shared/loading.dart';

import '../../shared/constant.dart';

class Register extends StatefulWidget {

  final Function toggleView;
  Register({this.toggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final myController = new TextEditingController();

  final AuthService _authService = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;


  //textfield state
  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return loading ? Loading() : Scaffold(
      backgroundColor: textColor,
      appBar: AppBar(
        backgroundColor: textColor,
        elevation: 10.0,
        title: Text('Sign up to School'),
        titleSpacing: 2.0,
        actions: <Widget>[
          FlatButton.icon(
            onPressed: () {// ignore: unnecessary_statements
              widget.toggleView();
            },
              icon: Icon(Icons.person),
              label: Text('Sign in'),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              SizedBox(height: 50.0,),
              TextFormField(
                decoration: textInputDecoration.copyWith(hintText: 'Email'),
                validator: (value) => value.isEmpty ? 'Enter a valid email address' : null,
                onSaved: (value) {
                  setState(() => email = value);
                },
              ),
              SizedBox(height: 20.0,),
              TextFormField(
                decoration: textInputDecoration.copyWith(hintText: 'Password'),
                validator: (val) => val.length <6 ? 'Enter a password that is at least 6 characters long' : null,
                obscureText: true,
                onSaved: (val) {
                  setState(() => password = val);
                },
              ),
              SizedBox(height: 30.0,),
              RaisedButton(
                color: Colors.blue,
                child: Text('Register',
                  style: TextStyle(color: Colors.white),),
                onPressed: () async {
                  this._formKey.currentState.save();
                  if(_formKey.currentState.validate()){
                    loading = true;
                    dynamic result = await _authService.registerWithEmailAndPassword(email, password);
                    if(result == null){
                      loading = false;
                      setState(() => error = 'Failed Registering, check internet connection');
                    }
                  }
                },
              ),
              SizedBox(height: 20.0,),
              Text(error,
              style: TextStyle(color: Colors.red, fontSize: 13.0),)
            ],
          ),
        ),
      ),
    );
  }
}
