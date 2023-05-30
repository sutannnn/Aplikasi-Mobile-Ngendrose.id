import 'package:flutter/material.dart';
import 'package:flutter_application_1/onboarding/login.dart';
import 'package:flutter_application_1/onboarding/login2.dart';
import 'package:flutter_application_1/onboarding/signup.dart';
import 'package:flutter_application_1/onboarding/start.dart';

import 'signup2.dart';

class SignIn2 extends StatelessWidget {
  const SignIn2({super.key});

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
    return new Scaffold(
        backgroundColor: Color.fromRGBO(109, 132, 158, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(35, 68, 105, 1),
          elevation: 0,
          
        ),
        body: Column(
          children: [
            Container(
              child: Stack(
                children: [
                  Opacity(
                    opacity: 1,
                    child: ClipPath(
                      clipper: WaveClipper(),
                      child: Container(
                        color: Color.fromRGBO(35, 68, 105, 1),
                        height: 200,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 22),
              child: Text(
                "Let's Go",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: ElevatedButton.icon(
                onPressed: (){}, 
                icon: IconButton(
                  onPressed: (){}, 
                  icon: Icon(Icons.facebook),
                  color: Colors.black,
                  iconSize: 20,
                ),
                label: Padding(
                  padding: const EdgeInsets.only(right: 17),
                  child: Text(
                    "Continue with Facebook",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(161, 177, 194, 1),
                  onPrimary: Colors.white,
                  maximumSize: Size(230, 40),
                  minimumSize: Size(230, 40),
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: ElevatedButton.icon(
                onPressed: (){}, 
                icon: Padding(
                  padding: const EdgeInsets.only(right: 7),
                  child: ImageIcon(AssetImage('images/google.png'), color: Colors.black,),
                ),
                label: Padding(
                  padding: const EdgeInsets.only(right: 22),
                  child: Text(
                    "Continue with Google",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(161, 177, 194, 1),
                  onPrimary: Colors.white,
                  minimumSize: Size(230, 40),
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 22),
              child: ElevatedButton.icon(
                onPressed: (){}, 
                icon: IconButton(
                  onPressed: (){}, 
                  icon: Icon(Icons.apple),
                  color: Colors.black,
                  iconSize: 20,
                ),
                label: Padding(
                  padding: const EdgeInsets.only(right: 38),
                  child: Text(
                    "Continue with Apple",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(161, 177, 194, 1),
                  onPrimary: Colors.white,
                  maximumSize: Size(230, 40),
                  minimumSize: Size(230, 40),
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  )
                ),
              ),
            ),
            Text(
              "Or",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 22, top: 22),
              child: ElevatedButton.icon(
                onPressed: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (contex) => const Login2())
                  );
                }, 
                icon: IconButton(
                  onPressed: (){}, 
                  icon: Icon(Icons.lock),
                  color: Colors.black,
                  iconSize: 20,
                ),
                label: Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Text(
                    "Sign in with Password",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(161, 177, 194, 1),
                  onPrimary: Colors.white,
                  maximumSize: Size(230, 40),
                  minimumSize: Size(230, 40),
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  )
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                TextButton(
                  onPressed: (){
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => const SignUp2())
                    );
                  },
                  child: Text("Sign Up"),
                  style: TextButton.styleFrom(
                    primary: Color.fromRGBO(35, 68, 105, 1),
                  )
                ),
              ],
            )
          ],
        )
      );
  }
}

class WaveClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    debugPrint(size.width.toString());
    var path = new Path();
    path.lineTo(0, size.height);
    var firstStart = Offset(size.width / 5, size.height - 10);
    var firstEnd = Offset(size.width / 2.25, size.height - 70.0);
    path.quadraticBezierTo(firstStart.dx, firstStart.dy, 
        firstEnd.dx, firstEnd.dy);
    
    var secondStart = Offset(size.width - (size.width/3.24), size.height - 130);
    var secondEnd = Offset(size.width, size.height - 20);
    path.quadraticBezierTo(secondStart.dx, secondStart.dy, 
        secondEnd.dx, secondEnd.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }
  
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}