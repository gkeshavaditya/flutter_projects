import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('What Should I do Now'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: WhatShouldIdoNow(),
      ),
    ),
  );
}

class WhatShouldIdoNow extends StatefulWidget {
  const WhatShouldIdoNow({Key key}) : super(key: key);

  @override
  _WhatShouldIdoNowState createState() => _WhatShouldIdoNowState();
}

class _WhatShouldIdoNowState extends State<WhatShouldIdoNow> {
  int ballState = 1;

  void updateBallState() {
    setState(() {
      ballState = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  updateBallState();
                });
              },
              child: Image.asset('images/ball$ballState.png'),
            ),
          ),
        ],
      ),
    );
  }
}
