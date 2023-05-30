import 'package:flutter/material.dart';

class MyTask extends StatelessWidget {
  MyTask({super.key, required this.myTask, required this.pressedButtonNo2});

  final List myTask;
  int pressedButtonNo2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: ElevatedButton(
              child: Text(
                myTask[0],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
              ),
              style: ElevatedButton.styleFrom(
                  primary: pressedButtonNo2 == 0
                      ? Color.fromRGBO(35, 68, 105, 1)
                      : Color.fromRGBO(109, 132, 158, 1),
                  onPrimary: Color.fromRGBO(109, 132, 158, 1),
                  minimumSize: Size(75, 30),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Color.fromRGBO(35, 68, 105, 1)),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  )),
              onPressed: () {
                pressedButtonNo2 = 0;
              },
            )),
        Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: ElevatedButton(
              child: Text(
                myTask[1],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
              ),
              style: ElevatedButton.styleFrom(
                  primary: pressedButtonNo2 == 1
                      ? Color.fromRGBO(35, 68, 105, 1)
                      : Color.fromRGBO(109, 132, 158, 1),
                  onPrimary: Color.fromRGBO(109, 132, 158, 1),
                  minimumSize: Size(75, 30),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Color.fromRGBO(35, 68, 105, 1)),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  )),
              onPressed: () {
                pressedButtonNo2 = 1;
              },
            )),
        Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: ElevatedButton(
              child: Text(
                myTask[2],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
              ),
              style: ElevatedButton.styleFrom(
                  primary: pressedButtonNo2 == 2
                      ? Color.fromRGBO(35, 68, 105, 1)
                      : Color.fromRGBO(109, 132, 158, 1),
                  onPrimary: Color.fromRGBO(109, 132, 158, 1),
                  minimumSize: Size(75, 30),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Color.fromRGBO(35, 68, 105, 1)),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  )),
              onPressed: () {
                pressedButtonNo2 = 2;
              },
            )),
        Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: ElevatedButton(
              child: Text(
                myTask[3],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
              ),
              style: ElevatedButton.styleFrom(
                  primary: pressedButtonNo2 == 3
                      ? Color.fromRGBO(35, 68, 105, 1)
                      : Color.fromRGBO(109, 132, 158, 1),
                  onPrimary: Color.fromRGBO(109, 132, 158, 1),
                  minimumSize: Size(75, 30),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Color.fromRGBO(35, 68, 105, 1)),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  )),
              onPressed: () {
                pressedButtonNo2 = 3;
              },
            )),
        Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: ElevatedButton(
              child: Text(
                myTask[4],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
              ),
              style: ElevatedButton.styleFrom(
                  primary: pressedButtonNo2 == 3
                      ? Color.fromRGBO(35, 68, 105, 1)
                      : Color.fromRGBO(109, 132, 158, 1),
                  onPrimary: Color.fromRGBO(109, 132, 158, 1),
                  minimumSize: Size(75, 30),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Color.fromRGBO(35, 68, 105, 1)),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  )),
              onPressed: () {
                pressedButtonNo2 = 4;
              },
            ))
      ],
    );
  }
}
