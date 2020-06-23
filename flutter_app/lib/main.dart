import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(TimerApp());
}

class TimerApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new TimerAppState();
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'First Flutter',
//       home: Scaffold(
//         appBar: AppBar(title: Text('Hi')),
//         body: Center(
//             child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//               CustomTextBox(
//                 label: 'HRS',
//               ),
//               CustomTextBox(label: 'MIN'),
//               CustomTextBox(label: 'SEC'),
//             ])),
//       ),
//     );
//   }
// }

class TimerAppState extends State<TimerApp> {
  static const duration = const Duration(seconds: 1);

  int secondPass = 0;
  bool isActive = false;

  Timer timer;

  void handleClick() {
    if (isActive) {
      setState(() {
        secondPass = secondPass + 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (timer == null) {
      timer = Timer.periodic(duration, (Timer t) {
        handleClick();
      });
    }

    int seconds = secondPass % 60;
    int minutes = secondPass ~/ 60;
    int hours = secondPass ~/ (60 * 60);

    return MaterialApp(
        title: 'First Flutter',
        home: Scaffold(
          appBar: AppBar(title: Text('Hi')),
          body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CustomTextBox(
                          label: 'HRS',
                          value: hours.toString().padLeft(2, '0'),
                        ),
                        CustomTextBox(
                          label: 'MIN',
                          value: minutes.toString().padLeft(2, '0'),
                        ),
                        CustomTextBox(
                          label: 'SEC',
                          value: seconds.toString().padLeft(2, '0'),
                        ),
                      ]),
                  Container(
                      margin: EdgeInsets.only(top: 20),
                      child: RaisedButton(
                        child: Text(isActive ? 'STOP' : 'START'),
                        onPressed: () {
                          setState(() {
                            isActive = !isActive;
                          });
                        },
                      ))
                ]),
          ),
        ));
  }
}

class CustomTextBox extends StatelessWidget {
  const CustomTextBox({this.label, this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3),
      padding: EdgeInsets.all(10),
      decoration: new BoxDecoration(
          borderRadius: new BorderRadius.circular(30), color: Colors.purple),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            '$value',
            style: TextStyle(
                color: Colors.green, fontSize: 34, fontWeight: FontWeight.bold),
          ),
          Text(
            '$label',
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
