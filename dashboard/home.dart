import 'dart:convert';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/dashboard/BodyInfor.dart';
import 'package:flutter_application_1/dashboard/bodyhome.dart';
import 'package:flutter_application_1/dashboard/bodyprofile.dart';
import 'package:flutter_application_1/dashboard/bodywallet.dart';
import 'package:flutter_application_1/dashboard/provider.dart';
import 'package:flutter_application_1/komponen/custombutton.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'notif.dart';
import 'package:http/http.dart' as http;

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

Future<InitializationStatus> _initGoogleMobileAds() {
    // TODO: Initialize Google Mobile Ads SDK
    return MobileAds.instance.initialize();
  }

Future<List<Data>> fetchDatas(http.Client client) async {
  final response =
      await client.get(Uri.parse('http://192.168.103.168:8000/ngendorse'));

  // Use the compute function to run parsePhotos in a separate isolate.
  return compute(parseDatas, response.body);
}

// A function that converts a response body into a List<Photo>.
List<Data> parseDatas(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Data>((json) => Data.fromJson(json)).toList();
}

class Data {
  final int id;
  final String nama;
  final String image;
  final int kuota;
  final int incom;
  final String deadlines;
  final int payment;

  const Data(
      {required this.id,
      required this.nama,
      required this.image,
      required this.kuota,
      required this.incom,
      required this.deadlines,
      required this.payment});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
        id: json['id'] as int,
        nama: json['nama'] as String,
        image: json['image'] as String,
        kuota: json['kuota'] as int,
        incom: json['incom'] as int,
        deadlines: json['deadlines'] as String,
        payment: json['payment'] as int);
  }
}

class _MyHomeState extends State<MyHome> {
  int pressedButtonNo = 0;
  int pressedButtonNo2 = 0;
  final List<String> myTask = [
    "Submit content",
    "Content in reviews",
    "Submit proof post",
    "Post in reviews",
    "Done"
  ];

  final List<String> myInter = ["Food", "Fashion", "Sport"];

  @override
  Widget build(BuildContext context) {
    var cart = context.watch<CartModel>().items;
    final List<Widget> bodyTask = [
      Center(
          child: cart.length == 0
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset("images/notif.png"),
                    Text("You don't have applied to any campaigns"),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Submit Content",
                          style: TextStyle(
                              color: Color.fromRGBO(35, 68, 105, 1),
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ))
                  ],
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: List.generate(cart.length, (index) {
                    return Card(
                      elevation: 5,
                      shadowColor: Colors.black,
                      color: Color.fromRGBO(198, 206, 214, 1),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: InkWell(
                        splashColor: Colors.white,
                        onTap: () {
                          debugPrint('Card tapped.');
                        },
                        child: SizedBox(
                            height: 80,
                            width: 317,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100)),
                                  child: Image.asset(cart[index].image),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Container(
                                    width: 200,
                                    child: Text(
                                      cart[index].nama,
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                          color:
                                              Color.fromRGBO(35, 68, 105, 1)),
                                    )),
                                Icon(Icons.check_circle, color: Colors.green,)
                              ],
                            )),
                      ),
                    );
                  }))),
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("images/notif.png"),
            Text("You don't have applied to any campaigns"),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Content In Reviews",
                  style: TextStyle(
                      color: Color.fromRGBO(35, 68, 105, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ))
          ],
        ),
      ),
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("images/notif.png"),
            Text("You don't have applied to any campaigns"),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Submit Proof Post",
                  style: TextStyle(
                      color: Color.fromRGBO(35, 68, 105, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ))
          ],
        ),
      ),
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("images/notif.png"),
            Text("You don't have applied to any campaigns"),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Post In Reviews",
                  style: TextStyle(
                      color: Color.fromRGBO(35, 68, 105, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ))
          ],
        ),
      ),
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("images/notif.png"),
            Text("You don't have applied to any campaigns"),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Done",
                  style: TextStyle(
                      color: Color.fromRGBO(35, 68, 105, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ))
          ],
        ),
      ),
    ];

    final List<Widget> myInter2 = List.generate(myInter.length, (index) {
      return Padding(
        padding: const EdgeInsets.only(right: 5),
        child: Container(
            width: 55,
            height: 20,
            decoration: BoxDecoration(
                color: Color.fromRGBO(35, 68, 105, 1),
                borderRadius: BorderRadius.circular(22)),
            child: Center(
              child: Text(
                myInter[index],
                style: TextStyle(color: Colors.white, fontSize: 8),
              ),
            )),
      );
    });

    final List<AppBar> myAppBar = [
      AppBar(
        backgroundColor: Color.fromRGBO(198, 206, 214, 1),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10, top: 20),
          child: Image.asset('images/photo.png'),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Good Morning  ",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w200),
                  ),
                  Icon(
                    Icons.wb_sunny,
                    color: Colors.yellow,
                    size: 15,
                  )
                ],
              ),
              Text(
                "Fadil Jaidi",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 10),
            child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyNotif()));
                },
                icon: Icon(
                  Icons.notifications_none,
                  color: Colors.black,
                )),
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: Center(
            child: ConstrainedBox(
              constraints:
                  const BoxConstraints.tightFor(height: 40, width: 315),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Search campaign/brand",
                    labelStyle: const TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1), fontSize: 8),
                    focusedBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromRGBO(214, 214, 214, 1)),
                        borderRadius: BorderRadius.all(Radius.circular(22))),
                    enabledBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromRGBO(214, 214, 214, 1)),
                        borderRadius: BorderRadius.all(Radius.circular(22))),
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: ConstrainedBox(
                      constraints:
                          const BoxConstraints.tightFor(height: 53, width: 66),
                      child: IconButton(
                        icon: const Icon(Icons.tune),
                        onPressed: () {},
                      ),
                    )),
              ),
            ),
          ),
        ),
      ),
      AppBar(
        backgroundColor: Color.fromRGBO(198, 206, 214, 1),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10, top: 20),
          child: Image.asset('images/e.png'),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Informations",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 10),
            child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyNotif()));
                },
                icon: Icon(
                  Icons.notifications_none,
                  color: Colors.black,
                )),
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: Center(
            child: ConstrainedBox(
              constraints:
                  const BoxConstraints.tightFor(height: 40, width: 315),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Search for informations",
                  hintStyle: const TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontSize: 12,
                      fontWeight: FontWeight.w300),
                  focusedBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(214, 214, 214, 1)),
                      borderRadius: BorderRadius.all(Radius.circular(22))),
                  enabledBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(214, 214, 214, 1)),
                      borderRadius: BorderRadius.all(Radius.circular(22))),
                  prefixIcon: const Icon(Icons.search),
                ),
              ),
            ),
          ),
        ),
      ),
      AppBar(
        toolbarHeight: 150,
        flexibleSpace: Image(
          image: AssetImage('images/bginflu.png'),
          fit: BoxFit.cover,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.settings,
              size: 30,
              color: Colors.black,
            ),
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(300),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: ConstrainedBox(
                constraints:
                    const BoxConstraints.tightFor(height: 270, width: 250),
                child: Stack(children: [
                  Center(
                    child: Container(
                      width: 200,
                      height: 270,
                      decoration: BoxDecoration(
                          // border: Border.all(color: Colors.white)
                          ),
                    ),
                  ),
                  Positioned(
                    bottom: 1,
                    left: 25,
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.grey.withOpacity(0.3), //color of shadow
                            spreadRadius: 5, //spread radius
                            blurRadius: 7, // blur radius
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                        color: Color.fromRGBO(198, 206, 214, 1),
                        borderRadius: BorderRadius.all(Radius.circular(22)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 55,
                          ),
                          Text(
                            "Fadil Jaidi",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 20,
                              ),
                              Text(
                                "4.9/5/0",
                                style: TextStyle(
                                    fontSize: 8, fontWeight: FontWeight.w400),
                              ),
                              Container(
                                  height: 17,
                                  child: VerticalDivider(
                                    thickness: 1,
                                  )),
                              Icon(
                                Icons.tiktok,
                                color: Colors.black,
                                size: 20,
                              ),
                              Image.asset('images/ig.png')
                            ],
                          ),
                          CusButtom(
                              tx: "Edit Profile",
                              fs: 8,
                              txc: Colors.white,
                              elc: Color.fromRGBO(35, 68, 105, 1),
                              minSz: Size(50, 17),
                              cl: MyHome()),
                          Text(
                            "Interested in",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: myInter2,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 65,
                    child: Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.grey.withOpacity(0.3), //color of shadow
                            spreadRadius: 5, //spread radius
                            blurRadius: 7, // blur radius
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                        color: Color.fromRGBO(198, 206, 214, 1),
                        border: Border.all(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                      ),
                      child: Image.asset(
                        "images/photo.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 145,
                    left: 150,
                    child: Container(
                      width: 30,
                      height: 30,
                      child: InkWell(
                        child: Icon(
                          Icons.camera_alt,
                          color: Color.fromRGBO(35, 68, 105, 1),
                        ),
                        onTap: () {},
                      ),
                    ),
                  )
                ])),
          ),
        ),
      ),
      AppBar(
        backgroundColor: Color.fromRGBO(198, 206, 214, 1),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10, top: 20),
          child: Image.asset('images/e.png'),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "My Task",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 10),
            child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyNotif()));
                },
                icon: Icon(
                  Icons.notifications_none,
                  color: Colors.black,
                )),
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: Center(
            child: Column(
              children: [
                ConstrainedBox(
                  constraints:
                      const BoxConstraints.tightFor(height: 40, width: 315),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Search for campaigns",
                      hintStyle: const TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 12,
                          fontWeight: FontWeight.w300),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(214, 214, 214, 1)),
                          borderRadius: BorderRadius.all(Radius.circular(22))),
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(214, 214, 214, 1)),
                          borderRadius: BorderRadius.all(Radius.circular(22))),
                      prefixIcon: const Icon(Icons.search),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
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
                                    side: BorderSide(
                                        color: Color.fromRGBO(35, 68, 105, 1)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
                                  )),
                              onPressed: () {
                                setState(() {
                                  pressedButtonNo2 = 0;
                                });
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
                                    side: BorderSide(
                                        color: Color.fromRGBO(35, 68, 105, 1)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
                                  )),
                              onPressed: () {
                                setState(() {
                                  pressedButtonNo2 = 1;
                                });
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
                                    side: BorderSide(
                                        color: Color.fromRGBO(35, 68, 105, 1)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
                                  )),
                              onPressed: () {
                                setState(() {
                                  pressedButtonNo2 = 2;
                                });
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
                                    side: BorderSide(
                                        color: Color.fromRGBO(35, 68, 105, 1)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
                                  )),
                              onPressed: () {
                                setState(() {
                                  pressedButtonNo2 = 3;
                                });
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
                                  primary: pressedButtonNo2 == 4
                                      ? Color.fromRGBO(35, 68, 105, 1)
                                      : Color.fromRGBO(109, 132, 158, 1),
                                  onPrimary: Color.fromRGBO(109, 132, 158, 1),
                                  minimumSize: Size(75, 30),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: Color.fromRGBO(35, 68, 105, 1)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
                                  )),
                              onPressed: () {
                                setState(() {
                                  pressedButtonNo2 = 4;
                                });
                              },
                            ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      AppBar(
        backgroundColor: Color.fromRGBO(198, 206, 214, 1),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10, top: 20),
          child: Image.asset('images/photo.png'),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hei Fadil!",
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                "Welcome Back!",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 10),
            child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyNotif()));
                },
                icon: Icon(
                  Icons.notifications_none,
                  color: Colors.black,
                )),
          )
        ],
      ),
    ];

    final List<Widget> myBodys = [
      FutureBuilder<List<Data>>(
        future: fetchDatas(http.Client()),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text('An error has occurred!'),
            );
          } else if (snapshot.hasData) {
            return BodyHome(
              myList: snapshot.data!,
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      BodyInfor(),
      BodyProfile(),
      bodyTask[pressedButtonNo2],
      BodyWallet()
    ];

    return MultiProvider(
      providers: [ChangeNotifierProvider<CartModel>.value(value: CartModel())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color.fromRGBO(198, 206, 214, 1),
          appBar: myAppBar[pressedButtonNo],
          body: myBodys[pressedButtonNo],
          bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: Colors.transparent,
            height: 60,
            items: <Widget>[
              SizedBox(
                height: 50,
                child: Column(
                  children: [
                    Icon(Icons.home,
                        size: 25,
                        color: (pressedButtonNo == 0)
                            ? Color.fromRGBO(35, 68, 105, 1)
                            : Color.fromRGBO(10, 10, 10, 0.5)),
                    Text("Home")
                  ],
                ),
              ),
              Container(
                height: 50,
                child: Column(
                  children: [
                    Icon(Icons.business_center,
                        size: 25,
                        color: (pressedButtonNo == 1)
                            ? Color.fromRGBO(35, 68, 105, 1)
                            : Color.fromRGBO(10, 10, 10, 0.5)),
                    Text(
                      "Campaign",
                      style: TextStyle(fontSize: 13),
                    )
                  ],
                ),
              ),
              Container(
                height: 50,
                child: Column(
                  children: [
                    Image.asset(
                      'images/e.png',
                      color: (pressedButtonNo == 2)
                          ? Color.fromRGBO(35, 68, 105, 1)
                          : Color.fromRGBO(10, 10, 10, 0.5),
                    ),
                    Text("Profile")
                  ],
                ),
              ),
              Container(
                height: 50,
                child: Column(
                  children: [
                    Icon(Icons.description,
                        size: 25,
                        color: (pressedButtonNo == 3)
                            ? Color.fromRGBO(35, 68, 105, 1)
                            : Color.fromRGBO(10, 10, 10, 0.5)),
                    Text("My Task")
                  ],
                ),
              ),
              Container(
                height: 50,
                child: Column(
                  children: [
                    Icon(Icons.money,
                        size: 25,
                        color: (pressedButtonNo == 4)
                            ? Color.fromRGBO(35, 68, 105, 1)
                            : Color.fromRGBO(10, 10, 10, 0.5)),
                    Text("E-Wallet")
                  ],
                ),
              ),
            ],
            onTap: (index) {
              setState(() {
                pressedButtonNo = index;
              });
            },
          ),
        ),
      ),
    );
  }
}

class CurrencyFormat {
  static String convertToIdr(dynamic number, int decimalDigit) {
    NumberFormat currencyFormatter = NumberFormat.currency(
      locale: 'id',
      symbol: 'Rp ',
      decimalDigits: decimalDigit,
    );
    return currencyFormatter.format(number);
  }
}
