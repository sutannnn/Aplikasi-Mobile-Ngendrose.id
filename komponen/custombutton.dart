import 'package:flutter/material.dart';
import '../onboarding/signin2.dart';

class CusButtom extends StatefulWidget {
  const CusButtom({super.key, required this.tx, required this.fs, required this.txc, required this.elc, required this.minSz, required this.cl});


  final String tx;
  final double fs;
  final Color txc;
  final Color elc;
  final Size minSz;
  final Widget cl;

  @override
  State<CusButtom> createState() => _CusButtomState(tx,fs,txc,elc,minSz,cl);
}

class _CusButtomState extends State<CusButtom> {
  _CusButtomState(this.tx, this.fs, this.txc, this.elc, this.minSz, this.cl);

  final String tx;
  final double fs;
  final Color txc;
  final Color elc;
  final Size minSz;
  final Widget cl;
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        tx,
        style: TextStyle(
          color: txc,
          fontSize: fs,
        ),
      ),
      style: ElevatedButton.styleFrom(
          primary: elc,
          onPrimary: Color.fromRGBO(109, 132, 158, 1),
          minimumSize: minSz,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Color.fromRGBO(35, 68, 105, 1)),
            borderRadius: BorderRadius.all(Radius.circular(30)),
          )),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => cl));
      },
    );
  }
}

// import 'package:flutter/material.dart';
// import '../onboarding/signin2.dart';

// class CusButtom extends StatelessWidget {
//   const CusButtom({super.key, required this.tx, required this.fs, required this.txc, required this.elc, required this.minSz, required this.cl});


//   final String tx;
//   final double fs;
//   final Color txc;
//   final Color elc;
//   final Size minSz;
//   final Widget cl;

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       child: Text(
//         tx,
//         style: TextStyle(
//           color: txc,
//           fontSize: fs,
//         ),
//       ),
//       style: ElevatedButton.styleFrom(
//           primary: elc,
//           onPrimary: Color.fromRGBO(109, 132, 158, 1),
//           minimumSize: minSz,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(Radius.circular(30)),
//           )),
//       onPressed: () {
//         Navigator.push(
//             context, MaterialPageRoute(builder: (context) => cl));
//       },
//     );
//   }
// }
