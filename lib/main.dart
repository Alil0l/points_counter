// import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

// double screenWidth = MediaQuery.of(context as BuildContext).size.width;

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamApoints = 0;
  int teamBpoints = 0;
  int screenWid = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Points Counter'),
          centerTitle: true,
          backgroundColor: Colors.orange[400],
        ),
        body:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Container(
            height: 350,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  // width: screenWidth / 2,
                  child: Column(
                    children: [
                      Text(
                        'Team A',
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        '$teamApoints',
                        style: TextStyle(fontSize: 150),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          teamApoints += 1;
                          setState(() {});
                        },
                        child: Text('Add 1 Point'),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange[300]),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          teamApoints += 2;
                          setState(() {});
                        },
                        child: Text('Add 2 Point'),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange[300]),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          teamApoints += 3;
                          setState(() {});
                        },
                        child: Text('Add 3 Point'),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange[300]),
                      ),
                    ],
                  ),
                ),
                VerticalDivider(
                  thickness: 2,
                  indent: 50,
                  color: Colors.grey[400],
                ),
                Column(
                  children: [
                    Text(
                      'Team B',
                      style: TextStyle(fontSize: 25),
                    ),
                    Text(
                      '$teamBpoints',
                      style: TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        teamBpoints++;
                        setState(() {});
                      },
                      child: Text('Add 1 Point'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange[300]),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        teamBpoints += 2;
                        setState(() {});
                      },
                      child: Text('Add 2 Point'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange[300]),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        teamBpoints += 3;
                        setState(() {});
                      },
                      child: Text('Add 3 Point'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange[300]),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              teamApoints = 0;
              teamBpoints = 0;
              setState(() {});
            },
            child: Text('Reset'),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange[400],
                fixedSize: Size.fromWidth(180)),
          ),
        ]),
      ),
    );
  }
}
