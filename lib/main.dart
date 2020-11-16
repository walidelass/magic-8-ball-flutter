import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.grey[300],
          appBar: AppBar(
            backgroundColor: Colors.blueAccent.shade700,
            title: Center(
              child: Text(
                'Magic 8 Ball'
              ),
            ),
          ),
          body: MagicBall(),
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int Ballnumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(40.0),
        child: FlatButton(
          onPressed: (){
            setState(() {
              Ballnumber = Random().nextInt(5) + 1;
            });
            print('Ball Pressed, Number generated is $Ballnumber');
          },
          child: Image.asset('images/ball$Ballnumber.png'),
          ),
        ),
      );
  }
}

