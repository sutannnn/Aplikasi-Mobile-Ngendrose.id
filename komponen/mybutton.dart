import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton(
      {super.key,
      required this.icn,
      required this.tx,
      required this.cls,
      required this.clr,
      required this.h,
      required this.w,
      required this.txc,
      required this.r});

  final Icon icn;
  final String tx;
  final Widget cls;
  final Color clr;
  final double h;
  final double w;
  final Color txc;
  final double r;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => cls));
      },
      child: Card(
        color: clr,
        elevation: 5,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(r))),
        child: SizedBox(
          width: w,
          height: h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              icn,
              Text(
                tx,
                style: TextStyle(
                    fontSize: 10, fontWeight: FontWeight.w400, color: txc),
              )
            ],
          ),
        ),
      ),
    );
  }
}
