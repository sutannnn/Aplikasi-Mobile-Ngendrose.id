import 'package:flutter/material.dart';
import 'package:flutter_application_1/dashboard/home.dart';
import 'package:flutter_application_1/onboarding/signup.dart';
import 'package:flutter_application_1/onboarding/start.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  
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
              padding: const EdgeInsets.only(bottom: 25),
              child: Text(
                "Login to Your Account",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints.tightFor(height: 40, width: 250),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(161, 177, 194, 1),
                  labelText: "Email",
                  labelStyle: TextStyle(color: Colors.black, fontSize: 12),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromRGBO(161, 177, 194, 1)),
                    borderRadius: BorderRadius.all(Radius.circular(22))
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromRGBO(161, 177, 194, 1)),
                    borderRadius: BorderRadius.all(Radius.circular(22))
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromRGBO(161, 177, 194, 1)),
                    borderRadius: BorderRadius.all(Radius.circular(22))
                  ),
                  suffixIcon: Icon(Icons.mail, color: Color.fromRGBO(35, 68, 105, 1),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 21, bottom: 16),
              child: ConstrainedBox(
                constraints: BoxConstraints.tightFor(height: 40, width: 250),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(161, 177, 194, 1),
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.black, fontSize: 12),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromRGBO(161, 177, 194, 1)),
                      borderRadius: BorderRadius.all(Radius.circular(22))
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromRGBO(161, 177, 194, 1)),
                      borderRadius: BorderRadius.all(Radius.circular(22))
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromRGBO(161, 177, 194, 1)),
                      borderRadius: BorderRadius.all(Radius.circular(22))
                    ),
                    suffixIcon: Icon(Icons.remove_red_eye, color: Color.fromRGBO(35, 68, 105, 1),),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 130),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyCheckBox(),
                  Text(
                    "Remember me",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 22, bottom: 11),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHome())
                  );
                }, 
                child: Text(
                  "Sign in",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(35, 68, 105, 1),
                  onPrimary: Colors.white,
                  maximumSize: Size(250, 40),
                  minimumSize: Size(250, 40),
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 37),
              child: TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 12),
                  primary: Colors.white,
                ),
                onPressed: () {},
                child: const Text('Forgot the Password?', style: TextStyle(color: Colors.white),),
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
                      MaterialPageRoute(builder: (context) => const SignUp())
                    );
                  },
                  child: Text("Sign Up"),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                  )
                ),
              ],
            )
          ],
        )
      );
  }
}

class _MyStatefulWidgetState extends State<MyCheckBox > {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.black;
      }
      return Colors.black;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}

class MyCheckBox extends StatefulWidget {
  const MyCheckBox ({super.key});

  @override
  State<MyCheckBox > createState() => _MyStatefulWidgetState();
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