import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 5;
  int rightDice = 3;
  void changeDice() {
    leftDice = Random().nextInt(6) + 1;
    rightDice = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  changeDice();
                });
              },
              child: Image.asset('images/dice$leftDice.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  changeDice();
                });
              },
              child: Image.asset('images/dice$rightDice.png'),
            ),
          ),
        ],
      ),
    );
  }
}
//
// class DicePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     int leftDice = 5;
//     return Center(
//       child: Row(
//         children: <Widget>[
//           Expanded(
//             child: FlatButton(
//               onPressed: () {
//                 print('clicked');
//               },
//               child: Image.asset('images/dice$leftDice.png'),
//             ),
//           ),
//           Expanded(
//             child: FlatButton(
//               onPressed: () {
//                 print('clicked again');
//               },
//               child: Image.asset('images/dice2.png'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
