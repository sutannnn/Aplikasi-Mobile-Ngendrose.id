import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyAll extends StatefulWidget {
  const MyAll({super.key});

  @override
  State<MyAll> createState() => _MyAllState();
}

class _MyAllState extends State<MyAll> {
    final List<Padding> myList = List.generate(
    4, 
    (index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Card(
          elevation: 10,
          shadowColor: Colors.black,
          color: const Color.fromRGBO(211, 218, 222, 1),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(22))
          ),
          child: InkWell(
            splashColor: Color.fromRGBO(198, 206, 214, 1),
            onTap: () {
              debugPrint('Card tapped.');
            },
            child: SizedBox(
              height: 190,
              width: 344,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Image.asset('images/pantene.png'),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 110, left: 8),
                                  child: Text(
                                    'Whitelab',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                                IconButton(
                                  onPressed: (){}, 
                                  icon: Icon(Icons.turned_in, color: Color.fromRGBO(35, 68, 105, 1),)
                                )
                              ],
                            ),
                            Text(
                              "Kuota : 10  | 2 Incoming Applicants",
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: ElevatedButton(
                            child: Text(
                              "Instagram",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(35, 68, 105, 1),
                              onPrimary: Color.fromRGBO(109, 132, 158, 1),
                              minimumSize: Size(80, 30),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(30)),
                              )
                            ),
                            onPressed: (){
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => const SignIn())
                              // );
                            }, 
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(),
                          child: ElevatedButton(
                            child: Text(
                              "Tiktok",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(35, 68, 105, 1),
                              onPrimary: Color.fromRGBO(109, 132, 158, 1),
                              minimumSize: Size(80, 30),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(30)),
                              )
                            ),
                            onPressed: (){
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => const SignIn())
                              // );
                            }, 
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text("Kontent Deadlines"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text("|"),
                        ),
                        Text("Payment"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            "31 Desember 2022",
                            style: TextStyle(
                              color: Color.fromRGBO(35, 68, 105, 1),
                              fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text("|"),
                        ),
                        Text(
                            "Rp100.000",
                            style: TextStyle(
                              color: Color.fromRGBO(35, 68, 105, 1),
                              fontWeight: FontWeight.w600
                            ),
                          ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    }
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(198, 206, 214, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(198, 206, 214, 1),
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Recent Campaign",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search), color: Colors.black, iconSize: 20),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: ElevatedButton(
                      child: Text(
                        "All",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w600),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(35, 68, 105, 1),
                          onPrimary: Color.fromRGBO(109, 132, 158, 1),
                          minimumSize: Size(37, 35),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          )),
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => const SignIn())
                        // );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: ElevatedButton(
                      child: Text(
                        "Fashion",
                        style: TextStyle(
                            color: Color.fromRGBO(35, 68, 105, 1),
                            fontSize: 10,
                            fontWeight: FontWeight.w600),
                      ),
                      style: ElevatedButton.styleFrom(
                          side: BorderSide(
                              width: 1, color: Color.fromRGBO(35, 68, 105, 1)),
                          primary: Color.fromRGBO(255, 255, 255, 1),
                          onPrimary: Color.fromRGBO(35, 68, 105, 1),
                          minimumSize: Size(37, 35),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          )),
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => const SignIn())
                        // );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: ElevatedButton(
                      child: Text(
                        "Make Up",
                        style: TextStyle(
                            color: Color.fromRGBO(35, 68, 105, 1),
                            fontSize: 10,
                            fontWeight: FontWeight.w600),
                      ),
                      style: ElevatedButton.styleFrom(
                          side: BorderSide(
                              width: 1, color: Color.fromRGBO(35, 68, 105, 1)),
                          primary: Color.fromRGBO(255, 255, 255, 1),
                          onPrimary: Color.fromRGBO(35, 68, 105, 1),
                          minimumSize: Size(37, 35),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          )),
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => const SignIn())
                        // );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: ElevatedButton(
                      child: Text(
                        "Food",
                        style: TextStyle(
                            color: Color.fromRGBO(35, 68, 105, 1),
                            fontSize: 10,
                            fontWeight: FontWeight.w600),
                      ),
                      style: ElevatedButton.styleFrom(
                          side: BorderSide(
                              width: 1, color: Color.fromRGBO(35, 68, 105, 1)),
                          primary: Color.fromRGBO(255, 255, 255, 1),
                          onPrimary: Color.fromRGBO(35, 68, 105, 1),
                          minimumSize: Size(37, 35),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          )),
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => const SignIn())
                        // );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: myList
            )
          ],
        ),
      ),
    );
  }
}
