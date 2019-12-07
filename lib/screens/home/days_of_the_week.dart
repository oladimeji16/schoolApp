import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';



class DaysOfTheWeek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text('Days'),
       centerTitle: true,
       titleSpacing: 2.0,
     ),

      body: Column(
        children: <Widget>[
          Expanded(child: Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/monday');
                  },
                  child: ReUsableCard(
                    colour: textColor,
                    cardChild: Center(
                      child: Column(
                        children: <Widget>[
                          Image(
                            image: AssetImage('images/monday.png'),
                          ),
                        SizedBox(height: 20.0,),
                          Text('Monday',
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 25.0,
                              color: boxColor,
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
                    Navigator.of(context).pushNamed('/tuesday');
                  },
                  child: ReUsableCard(
                    colour: textColor,
                    cardChild: Center(
                      child: Column(
                        children: <Widget>[

                          Image(
                            image: AssetImage('images/tuesday.png'),
                          ),
                          SizedBox(height: 20.0,),
                          Text('Tuesday',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: boxColor,

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
                    Navigator.of(context).pushNamed('/wednesday');
                  },
                  child: ReUsableCard(
                    colour: textColor,
                    cardChild: Center(
                      child: Column(
                        children: <Widget>[
                          Image(
                            image: AssetImage('images/wednesday.png'),
                          ),
                          SizedBox(height: 20.0,),
                          Text('Wednesday',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: boxColor,

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
                    Navigator.of(context).pushNamed('/thursday');
                  },
                  child: ReUsableCard(
                    colour: textColor,
                    cardChild: Center(
                      child: Column(
                        children: <Widget>[
                          Image(
                            image: AssetImage('images/thursday.png'),
                          ),
                          SizedBox(height: 20.0,),
                          Text('Thursday',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: boxColor,

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
                    Navigator.of(context).pushNamed('/friday');
                  },
                  child: ReUsableCard(
                    colour: textColor,
                    cardChild: Center(
                      child: Column(
                        children: <Widget>[
                          Image(
                            image: AssetImage('images/friday.png'),
                          ),
                          SizedBox(height: 20.0,),
                          Text('Friday',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: boxColor,

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
                    colour: textColor,
                    cardChild: Center(
                      child: Column(
                        children: <Widget>[
                          Image(
                            image: AssetImage('images/saturday.png'),
                          ),
                          SizedBox(height: 20.0,),
                          Text('Saturday',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: boxColor,

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

