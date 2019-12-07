import 'package:flutter/material.dart';
import 'package:schoolapp/screens/home/days_of_the_week.dart';
import 'package:schoolapp/screens/home/friday/timetableStream.dart';
import 'package:schoolapp/screens/home/resources.dart';
import 'package:schoolapp/screens/home/saturday/timetableStream.dart';
import 'package:schoolapp/screens/home/thursday/timetableStream.dart';
import 'package:schoolapp/screens/home/tuesday/timetableStream.dart';
import 'package:schoolapp/screens/home/wednesday/timetableStream.dart';
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
        return MaterialPageRoute(builder: (_) => MondayStream());
      case'/tuesday':
        return MaterialPageRoute(builder: (_) => TuesdayStream());
      case'/wednesday':
        return MaterialPageRoute(builder: (_) => WednesdayStream());
      case'/thursday':
        return MaterialPageRoute(builder: (_) => ThursdayStream());
      case'/friday':
        return MaterialPageRoute(builder: (_) => FridayStream());
      case'/saturday':
        return MaterialPageRoute(builder: (_) => SaturdayStream());
      case '/timetable':
        return MaterialPageRoute(builder: (_) => MondayStream());
      case '/subjects':
        return MaterialPageRoute(builder: (_) => Subjects());
      case'/resources':
        return MaterialPageRoute(builder: (_) => Resources());
      case'/daysoftheweek':
        return MaterialPageRoute(builder: (_) => DaysOfTheWeek());
    }
  }
}