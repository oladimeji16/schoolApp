import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schoolapp/services/auth.dart';
import 'days_of_the_week.dart';


const bottomContainerHeight = 80.0;
const boxColor = Colors.white;
const textColor = Colors.lightBlueAccent;


class InputPage extends StatefulWidget{
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('School'),
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () async {
                await _auth.signOut();
              },
              icon: Icon(Icons.person),
              label: Text('logout'),
          ),


        ],

      ),
      body: Column(
        children: <Widget>[
          Expanded(child: Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/daysoftheweek');
                  },
                  child: ReUsableCard(
                    colour: boxColor,
                    cardChild: Center(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Image(
                              image: AssetImage('images/time.jpg'),
                            ),
                          ),
                          SizedBox(height: 18.0,),
                          Text('Timetable',
                          style: TextStyle(
                              fontSize: 30.0,
                              color: textColor,),
                          )
                        ],
                      ),
                    ),
                  ),
                ),),
              Expanded(

                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/subjects');
                  },
                  child: ReUsableCard(
                    colour: boxColor,
                    cardChild: Center(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Image(
                                image: AssetImage('images/subjects.jpg')),

                          ),
                          SizedBox(height: 18.0,),
                          Text('Subjects',
                            style: TextStyle(
                                fontSize: 30.0,
                                color: textColor,),
                          )
                        ],
                      ),
                    ),),
                )
                ,),
            ],
          )),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/resources');
              },
              child: ReUsableCard(
                colour: boxColor,
                cardChild: Center(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 14.0,),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Container(
                          height: 150.0,
                          width: 150.0,
                          child: Image(
                            image: AssetImage('images/resources.jpg'),
                          ),
                        ),
                      ),
                      SizedBox(height: 18.0,),
                      Text(
                        'Resources',
                        style: TextStyle(
                          fontSize: 30.0,
                          color: textColor,
                        ),
                      ),
                    ],
                  ),
                ),

              ),
            ),),
        ],
      ),
    );
  }
}

class ReUsableCard extends StatelessWidget {
  ReUsableCard({@required this.colour, this.cardChild,});

  final Color colour;
  final Widget cardChild;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),

    );
  }
}

