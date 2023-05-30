import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/dashboard/home.dart';
import 'package:flutter_application_1/komponen/mybutton.dart';

class BodyProfile extends StatelessWidget {
  const BodyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyButton(icn: Icon(Icons.wallet), tx: "Payment\nMethods", cls: MyHome(), clr: Color.fromRGBO(198, 206, 214, 1), h: 80, w: 80, txc: Colors.black, r: 10),
            MyButton(icn: Icon(Icons.phonelink_ring), tx: "Connect\nAccount", cls: MyHome(), clr: Color.fromRGBO(198, 206, 214, 1), h: 80, w: 80, txc: Colors.black, r: 10),
            MyButton(icn: Icon(Icons.person_off), tx: "Deactivate\nAccount", cls: MyHome(), clr: Color.fromRGBO(198, 206, 214, 1), h: 80, w: 80, txc: Colors.black, r: 10)
          ],
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyButton(icn: Icon(Icons.settings), tx: "Settings", cls: MyHome(), clr: Color.fromRGBO(198, 206, 214, 1), h: 80, w: 80, txc: Colors.black, r: 10),
            MyButton(icn: Icon(Icons.help_center), tx: "Help Center", cls: MyHome(), clr: Color.fromRGBO(198, 206, 214, 1), h: 80, w: 80, txc: Colors.black, r: 10),
            MyButton(icn: Icon(Icons.logout), tx: "Log Out", cls: MyHome(), clr: Color.fromRGBO(198, 206, 214, 1), h: 80, w: 80, txc: Colors.black, r: 10)
          ],
        )
      ],
    );
  }
}