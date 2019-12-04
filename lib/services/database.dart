import 'dart:core';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:schoolapp/screens/home/monday/timetable.dart';
import 'package:schoolapp/models/courses.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});

  //collection reference
  final CollectionReference timetableCollection = Firestore.instance.collection('timetable');
  final CollectionReference subjectsCollection = Firestore.instance.collection('subjects');

  Future createUserDataMonday(String time, String course) async {
    return await timetableCollection.document(uid).setData({
      'time': time,
      'course': course,
    });
  }
  Future updateUserDataMonday(String time, String course) async {
    return await timetableCollection.document(uid).updateData({
      'time': time,
      'course': course,
    });
  }

  Future createUserDataTuesday(String time, String course) async {
    return await timetableCollection.document(uid).setData({
      'time': time,
      'course': course,
    });
  }
  Future updateUserDataTuesday(String time, String course) async {
    return await timetableCollection.document(uid).updateData({
      'time': time,
      'course': course,
    });
  }

  Future createUserDataWednesday(String time, String course) async {
    return await timetableCollection.document(uid).setData({
      'time': time,
      'course': course,
    });
  }
  Future updateUserDataWednesday(String time, String course) async {
    return await timetableCollection.document(uid).updateData({
      'time': time,
      'course': course,
    });
  }

  Future createUserDataThursday(String time, String course) async {
    return await timetableCollection.document(uid).setData({
      'time': time,
      'course': course,
    });
  }
  Future updateUserDataThursday(String time, String course) async {
    return await timetableCollection.document(uid).updateData({
      'time': time,
      'course': course,
    });
  }

  Future createUserDataFriday(String time, String course) async {
    return await timetableCollection.document(uid).setData({
      'time': time,
      'course': course,
    });
  }
  Future updateUserDataFriday(String time, String course) async {
    return await timetableCollection.document(uid).updateData({
      'time': time,
      'course': course,
    });
  }

  Future createUserDataSaturday(String time, String course) async {
    return await timetableCollection.document(uid).setData({
      'time': time,
      'course': course,
    });
  }
  Future updateUserDataSaturday(String time, String course) async {
    return await timetableCollection.document(uid).updateData({
      'time': time,
      'course': course,
    });
  }

  Future createUserDataSubjects(String courseCode, String courseContent) async {
    return await timetableCollection.document(uid).setData({
      'courseCode': courseCode,
      'courseContent': courseContent,
    });
  }
  Future updateUserDataSubjects(String courseCode, String courseContent) async {
    return await timetableCollection.document(uid).updateData({
      'courseCode': courseCode,
      'courseContent': courseContent,
    });
  }

  //timetable list from snapshot
    List<MondayTimetable>_mondayTimetableListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc){
      return MondayTimetable(
        time: doc.data['time']?? '',
        course: doc.data['course']?? '',
      );
    }).toList();
  }
    List<TuesdayTimetable>_tuesdayTimetableListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc){
      return TuesdayTimetable(
        time: doc.data['time']?? '',
        course: doc.data['course']?? '',
      );
    }).toList();
  }
    List<WednesdayTimetable>_wednesdayTimetableListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc){
      return WednesdayTimetable(
        time: doc.data['time']?? '',
        course: doc.data['course']?? '',
      );
    }).toList();
  }
    List<ThursdayTimetable>_thursdayTimetableListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc){
      return ThursdayTimetable(
        time: doc.data['time']?? '',
        course: doc.data['course']?? '',
      );
    }).toList();
  }
    List<FridayTimetable>_fridayTimetableListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc){
      return FridayTimetable(
        time: doc.data['time']?? '',
        course: doc.data['course']?? '',
      );
    }).toList();
  }
    List<SaturdayTimetable>_saturdayTimetableListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc){
      return SaturdayTimetable(
        time: doc.data['time']?? '',
        course: doc.data['course']?? '',
      );
    }).toList();
  }



  //userData from snapshot
  UserData _userDataFromSnapshot(DocumentSnapshot snapshot){
    return UserData(
      uid: uid,
      time: snapshot.data['time'],
      course: snapshot.data['course'],
    );
  }

  //get data stream
  Stream<List<MondayTimetable>> get monday {
    return timetableCollection.snapshots()
    .map(_mondayTimetableListFromSnapshot);
  }
  Stream<List<TuesdayTimetable>> get tuesday {
    return timetableCollection.snapshots()
        .map(_tuesdayTimetableListFromSnapshot);
  }
  Stream<List<WednesdayTimetable>> get wednesday {
    return timetableCollection.snapshots()
        .map(_wednesdayTimetableListFromSnapshot);
  }
  Stream<List<ThursdayTimetable>> get thursday {
    return timetableCollection.snapshots()
        .map(_thursdayTimetableListFromSnapshot);
  }
  Stream<List<FridayTimetable>> get friday {
    return timetableCollection.snapshots()
        .map(_fridayTimetableListFromSnapshot);
  }
  Stream<List<SaturdayTimetable>> get saturday {
    return timetableCollection.snapshots()
        .map(_saturdayTimetableListFromSnapshot);
  }

  //get user doc stream
  Stream<UserData> get userData {
    return timetableCollection.document(uid).snapshots()
    .map(_userDataFromSnapshot);
  }

  Stream<QuerySnapshot> get subjects {
    return subjectsCollection.snapshots();
  }

}