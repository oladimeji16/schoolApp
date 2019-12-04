import 'package:flutter/material.dart';
import 'screens/authenticate/authenticate.dart';
import 'package:provider/provider.dart';
import 'models/user.dart';
import 'package:schoolapp/screens/home/input_page.dart';


class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);

    if (user == null) {
      return Authenticate();
    } else {
      return InputPage();
    }
  }
}
