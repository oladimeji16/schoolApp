import 'package:flutter/material.dart';
import 'package:schoolapp/models/user.dart';
import 'package:schoolapp/services/auth.dart';
import 'route_generator.dart';
import 'package:provider/provider.dart';


void main() => runApp(School());

class School extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        theme: ThemeData.dark().copyWith(
              primaryColor: Colors.lightBlueAccent,
              scaffoldBackgroundColor: Colors.lightBlueAccent,
          ),
        initialRoute: '/',
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}


