import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/komponen/custombutton.dart';
import 'package:flutter_application_1/onboarding/signin.dart';
import 'package:flutter_application_1/onboarding/signin2.dart';

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(35, 68, 105, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(35, 68, 105, 1),
          elevation: 0,
        ),
        bottomNavigationBar: ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(220),
        topLeft: Radius.circular(220),
      ),
      child: BottomAppBar(
        elevation: 0,
        child: Container(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 11),
                        child: CusButtom(tx: "Cari Cuan", fs: 16, txc: Colors.white, elc: Color.fromRGBO(35, 68, 105, 1), minSz: Size(170,40), cl: SignIn())
                      ),
                      CusButtom(tx: "Buka Kampanye", fs: 16, txc: Colors.white, elc: Color.fromRGBO(35, 68, 105, 1), minSz: Size(170,40), cl: SignIn2())
                    ],
                  ),
            ),
            height: 184,
            decoration: BoxDecoration(
              color: Color.fromRGBO(109, 132, 158, 1),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(220), topRight: Radius.circular(220))
            ),
          ),
      )
    ),
        body: Center(
          child: Column(
            children: [
              Image(image: AssetImage('images/ngendorse.png'),),
              Image(image: AssetImage('images/influencer.png'),),
            ],
          )
        ),
      );
  }
}