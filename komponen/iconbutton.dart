import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../onboarding/login.dart';

class IcButton extends StatefulWidget {
  const IcButton({super.key, required this.tx, required this.ic, required this.cl});

  final String tx;
  final Widget ic;
  final Widget cl;
  

  @override
  State<IcButton> createState() => _IcButtonState(tx,ic,cl);
}

class _IcButtonState extends State<IcButton> {
  _IcButtonState(this.tx, this.ic, this.cl);

  final String tx;
  final Widget ic;
  final Widget cl;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (contex) => cl));
      },
      icon: IconButton(
        onPressed: () {},
        icon: ic,
        color: Colors.black,
        iconSize: 20,
      ),
      label: Padding(
        padding: const EdgeInsets.only(right: 30),
        child: Text(
          tx,
          style: TextStyle(
              color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
        ),
      ),
      style: ElevatedButton.styleFrom(
          primary: Color.fromRGBO(161, 177, 194, 1),
          onPrimary: Colors.white,
          maximumSize: Size(230, 40),
          minimumSize: Size(230, 40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          )),
    );
  }
}
