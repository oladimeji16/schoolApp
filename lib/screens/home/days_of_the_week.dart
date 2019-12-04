import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';



class DaysOfTheWeek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text('Days Of The Week'),
     ),

      body: Column(
        children: <Widget>[
          Expanded(child: Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/timetable');
                  },
                  child: ReUsableCard(
                    colour: boxColor,
                    cardChild: Center(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 50.0,),
                          Text('Monday',
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 25.0,
                              color: textColor,

                            ),
                          )

                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/timetable');
                  },
                  child: ReUsableCard(
                    colour: boxColor,
                    cardChild: Center(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 50.0,),
                          Text('Tuesday',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: textColor,

                            ),
                          )

                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          ),
          Expanded(child: Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/timetable');
                  },
                  child: ReUsableCard(
                    colour: boxColor,
                    cardChild: Center(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 50.0,),
                          Text('Wednesday',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: textColor,

                            ),
                          )

                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/timetable');
                  },
                  child: ReUsableCard(
                    colour: boxColor,
                    cardChild: Center(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 50.0,),
                          Text('Thursday',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: textColor,

                            ),
                          )

                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          ),
          Expanded(child: Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/timetable');
                  },
                  child: ReUsableCard(
                    colour: boxColor,
                    cardChild: Center(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 50.0,),
                          Text('Friday',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: textColor,

                            ),
                          )

                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/saturday');
                  },
                  child: ReUsableCard(
                    colour: boxColor,
                    cardChild: Center(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 50.0,),
                          Text('Saturday',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: textColor,

                            ),
                          )

                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          ),
        ],
      ),

    );
  }
}

