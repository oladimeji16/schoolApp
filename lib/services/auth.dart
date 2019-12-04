import 'package:firebase_auth/firebase_auth.dart';
import 'package:schoolapp/models/user.dart';
import 'package:schoolapp/services/database.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create user object based on firebase user
  User _userFromFirebaseUser(FirebaseUser user) {
    return user != null ? User(uid: user.uid) : null;
  }

  //auth change user stream
  Stream<User> get user {
    return _auth.onAuthStateChanged
        .map(_userFromFirebaseUser);
  }

  //sign in with email & password
  Future signInWithEmailAndPassword(String email, String password) async{
    try{
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    }catch(e){
      print(e.toString());
      return null;

    }
  }

  //sign up with email & password
  Future registerWithEmailAndPassword(String email, String password) async {
    try{
      AuthResult result = await _auth.createUserWithEmailAndPassword
        (email: email, password: password);
      FirebaseUser user = result.user;

      //create new document for user with uid
      await DatabaseService(uid: user.uid).createUserDataMonday(
          '00:00 - 00:00','AGY 210',
      );

      await DatabaseService(uid: user.uid).createUserDataTuesday(
        '00:00 - 00:00','AGY 210',
      );

      await DatabaseService(uid: user.uid).createUserDataWednesday(
        '00:00 - 00:00','AGY 210',
      );

      await DatabaseService(uid: user.uid).createUserDataThursday(
        '00:00 - 00:00','AGY 210',
      );

      await DatabaseService(uid: user.uid).createUserDataFriday(
        '00:00 - 00:00','AGY 210',
      );

      await DatabaseService(uid: user.uid).createUserDataSaturday(
        '00:00 - 00:00','AGY 210',
      );

      await DatabaseService(uid: user.uid).updateUserDataSubjects(
        'Agy 101/Agronomy of Cash crops',
        '1. introduction'
            '2. maize'
            '2.cashew'
            '3.Cocoa');
      return _userFromFirebaseUser(user);
    }catch(e){
      print(e.toString());
      return null;

    }
  }

  //sign out
  Future signOut() async {
    try{
      return await _auth.signOut();
    }catch(e){
      print(e.toString());
      return null;
    }
  }

}