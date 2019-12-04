import 'package:flutter/material.dart';
import 'package:schoolapp/screens/home/days_of_the_week.dart';
import 'package:schoolapp/screens/home/friday/timetable.dart';
import 'package:schoolapp/screens/home/monday/timetable.dart';
import 'package:schoolapp/screens/home/saturday/timetable.dart';
import 'package:schoolapp/screens/home/thursday/timetable.dart';
import 'package:schoolapp/screens/home/tuesday/timetable.dart';
import 'package:schoolapp/screens/home/wednesday/timetable.dart';
import 'package:schoolapp/wrapper.dart';
import 'screens/home/monday/timetableStream.dart';
import 'screens/home/subjects.dart';

class RouteGenerator {

  // ignore: missing_return
  static Route<dynamic> generateRoute(RouteSettings settings) {
   // final user = Provider.of<User>(context);
   // print(user);

   // final args = settings.arguments;

    switch(settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Wrapper());
      case'/monday':
        return MaterialPageRoute(builder: (_) => Monday());
      case'/tuesday':
        return MaterialPageRoute(builder: (_) => Tuesday());
      case'/wednesday':
        return MaterialPageRoute(builder: (_) => Wednesday());
      case'/thursday':
        return MaterialPageRoute(builder: (_) => Thursday());
      case'/friday':
        return MaterialPageRoute(builder: (_) => Friday());
      case'/saturday':
        return MaterialPageRoute(builder: (_) => Saturday());
      case '/timetable':
        return MaterialPageRoute(builder: (_) => TimetableStream());
      case '/subjects':
        return MaterialPageRoute(builder: (_) => Subjects());
      case'/resources':
        return MaterialPageRoute(builder: (_) => Subjects());
      case'/daysoftheweek':
        return MaterialPageRoute(builder: (_) => DaysOfTheWeek());
    }
  }
}