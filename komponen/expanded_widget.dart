import 'package:flutter/material.dart';

class ExpandedWidget extends StatefulWidget {
  const ExpandedWidget({super.key, required this.exp, required this.text, required this.title});
  final bool exp;
  final String text;
  final String title;
  @override
  State<ExpandedWidget> createState() => _ExpandedWidgetState(exp, text, title);
}

class _ExpandedWidgetState extends State<ExpandedWidget> {
  bool exp;
  String text;
  String title;

  _ExpandedWidgetState(this.exp, this.text, this.title);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        width: 272,
        height: exp == false ? 40 : 170,
        decoration: BoxDecoration(
            color: Color.fromRGBO(217, 217, 217, 1),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: Color.fromRGBO(35, 68, 105, 1),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        exp = !exp;
                      });
                    },
                    child: Icon(
                      exp == false
                          ? Icons.keyboard_arrow_down
                          : Icons.keyboard_arrow_up,
                      color: Color.fromRGBO(35, 68, 105, 1),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0),
              child: exp == false
                  ? null
                  : Padding(
                      padding: const EdgeInsets.all(10),
                      child: buildText(
                          text),
                    ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildText(String text) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w400,
          color: Color.fromRGBO(35, 68, 105, 1)),
    );
  }
}
