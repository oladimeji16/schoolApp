import 'package:flutter/material.dart';
import 'package:schoolapp/screens/home/input_page.dart';
import 'package:schoolapp/services/auth.dart';
import '../../shared/constant.dart';
import 'package:schoolapp/shared/loading.dart';

class SignIn extends StatefulWidget {

  final Function toggleView;
  SignIn({this.toggleView});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _authService = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;


  //textfield state
  String email = "";
  String password = "";
  String error = "";


  @override
  Widget build(BuildContext context) {
    return loading ? Loading() : Scaffold(
      backgroundColor: textColor,
      appBar: AppBar(
        backgroundColor: textColor,
        elevation: 10.0,
        title: Text('Sign in to School'),
        titleSpacing: 2.0,
        actions: <Widget>[
          FlatButton.icon(
            onPressed: () {
              widget.toggleView();
            },
            icon: Icon(Icons.person_add),
            label: Text('Register'),
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
                validator: (val) => val.isEmpty ? 'Enter a valid email address' : null,
                onSaved: (val) {
                  setState(() {
                    email = val;
                  });
                },
              ),
              SizedBox(height: 20.0,),
              TextFormField(
                decoration: textInputDecoration.copyWith(hintText: 'Password'),
                validator: (val) => val.length <6 ? 'Enter a password that is at least 6 characters long' : null,
                obscureText: true,
                onSaved: (val) {
                  setState(() {
                    password = val;
                  });
                },
              ),
              SizedBox(height: 30.0,),
              RaisedButton(
                color: Colors.blue,
                child: Text('Sign in',
                style: TextStyle(color: Colors.white),),
                onPressed: () async {
                  this._formKey.currentState.save();
                  if(_formKey.currentState.validate()){
                    setState(()=> loading = true);
                    dynamic result = await _authService.signInWithEmailAndPassword(email, password);
                    if(result == null){
                      setState((){
                        loading = false;
                        error = 'Could not sign in with those credentials';
                      });
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
