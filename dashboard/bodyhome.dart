import 'dart:convert';
import 'package:flutter_application_1/dashboard/detail.dart';
import 'package:flutter_application_1/dashboard/provider.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../ad_helper.dart';
import 'all.dart';
import 'home.dart';

class BodyHome extends StatefulWidget {
  const BodyHome({super.key, required this.myList});

  final List<Data> myList;

  @override
  State<BodyHome> createState() => _BodyHomeState();
}

class _BodyHomeState extends State<BodyHome> {
  BannerAd? _bannerAd;
  @override
  void initState() {
    // TODO: Load a banner ad
    BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      request: AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          setState(() {
            _bannerAd = ad as BannerAd;
          });
        },
        onAdFailedToLoad: (ad, err) {
          print('Failed to load a banner ad: ${err.message}');
          ad.dispose();
        },
      ),
    ).load();
  }

  @override
  void dispose() {
    // TODO: Dispose a BannerAd object
    _bannerAd?.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> myList2 = List.generate(widget.myList.length-1, (index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Card(
          elevation: 10,
          shadowColor: Colors.black,
          color: const Color.fromRGBO(211, 218, 222, 1),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(22))),
          child: InkWell(
            splashColor: Color.fromRGBO(198, 206, 214, 1),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyDetail(
                            data: widget.myList[index + 1],
                          )));
            },
            child: SizedBox(
              height: 190,
              width: 344,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Container(
                          width: 61,
                          height: 57,
                          child: Image.asset(
                            widget.myList[index + 1].image,
                            fit: BoxFit.fill,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 110, left: 8),
                                  child: Text(
                                    widget.myList[index + 1].nama,
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.turned_in,
                                      color: Color.fromRGBO(35, 68, 105, 1),
                                    ))
                              ],
                            ),
                            Text(
                              "Kuota : ${widget.myList[index + 1].kuota}  | ${widget.myList[index + 1].incom} Incoming Applicants",
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
                                  fontWeight: FontWeight.w600),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Color.fromRGBO(35, 68, 105, 1),
                                onPrimary: Color.fromRGBO(109, 132, 158, 1),
                                minimumSize: Size(80, 30),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
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
                              "Tiktok",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Color.fromRGBO(35, 68, 105, 1),
                                onPrimary: Color.fromRGBO(109, 132, 158, 1),
                                minimumSize: Size(80, 30),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
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
                            widget.myList[index + 1].deadlines,
                            style: TextStyle(
                                color: Color.fromRGBO(35, 68, 105, 1),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text("|"),
                        ),
                        Text(
                          CurrencyFormat.convertToIdr(
                              widget.myList[index + 1].payment, 0),
                          style: TextStyle(
                              color: Color.fromRGBO(35, 68, 105, 1),
                              fontWeight: FontWeight.w600),
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
    });
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Card(
              color: Color.fromRGBO(35, 68, 105, 1),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(22))),
              elevation: 0,
              child: InkWell(
                splashColor: Color.fromRGBO(198, 206, 214, 1),
                onTap: () {
                  debugPrint('Card tapped.');
                },
                child: SizedBox(
                  height: 163,
                  width: 344,
                  child: Stack(
                    children: [
                      Image.asset('images/vektor.png'),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "See how you find a",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      "campaign quickly!",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 30),
                                      child: ElevatedButton(
                                        child: Text(
                                          "Read More",
                                          style: TextStyle(
                                            color:
                                                Color.fromRGBO(35, 68, 105, 1),
                                            fontSize: 16,
                                          ),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.white,
                                            onPrimary: Color.fromRGBO(
                                                109, 132, 158, 1),
                                            minimumSize: Size(115, 29),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30)),
                                            )),
                                        onPressed: () {},
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Image.asset(
                                'images/influencer2.png',
                                fit: BoxFit.fill,
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          if (_bannerAd != null)
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: _bannerAd!.size.width.toDouble(),
                    height: _bannerAd!.size.height.toDouble(),
                    child: AdWidget(ad: _bannerAd!),
                  ),
                ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 60),
                  child: Text(
                    "Recommendation",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 75),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "See All",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(35, 68, 105, 1)),
                    ),
                  ),
                )
              ],
            ),
          ),
          FutureBuilder<List<Data>>(
            future: fetchDatas(http.Client()),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return const Center(
                  child: Text('An error has occurred!'),
                );
              } else if (snapshot.hasData) {
                return Card(
                  elevation: 10,
                  shadowColor: Colors.black,
                  color: const Color.fromRGBO(211, 218, 222, 1),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(22))),
                  child: InkWell(
                    splashColor: Color.fromRGBO(198, 206, 214, 1),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MyDetail(data: snapshot.data![0])));
                    },
                    child: SizedBox(
                      height: 190,
                      width: 344,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Image.asset(snapshot.data![0].image),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 110, left: 8),
                                          child: Text(
                                            snapshot.data![0].nama,
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.turned_in_not,
                                              color: Color.fromRGBO(
                                                  35, 68, 105, 1),
                                            ))
                                      ],
                                    ),
                                    Text(
                                      "Kuota : ${snapshot.data![0].kuota}  | ${snapshot.data![0].incom} Incoming Applicants",
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
                                          fontWeight: FontWeight.w600),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        primary: Color.fromRGBO(35, 68, 105, 1),
                                        onPrimary:
                                            Color.fromRGBO(109, 132, 158, 1),
                                        minimumSize: Size(80, 30),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)),
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
                                      "Tiktok",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        primary: Color.fromRGBO(35, 68, 105, 1),
                                        onPrimary:
                                            Color.fromRGBO(109, 132, 158, 1),
                                        minimumSize: Size(80, 30),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)),
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
                                    snapshot.data![0].deadlines,
                                    style: TextStyle(
                                        color: Color.fromRGBO(35, 68, 105, 1),
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Text("|"),
                                ),
                                Text(
                                  CurrencyFormat.convertToIdr(
                                      snapshot.data![0].payment, 0),
                                  style: TextStyle(
                                      color: Color.fromRGBO(35, 68, 105, 1),
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 60),
                  child: Text(
                    "Recent Campaigns",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 75),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyAll()));
                    },
                    child: Text(
                      "See All",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(35, 68, 105, 1)),
                    ),
                  ),
                )
              ],
            ),
          ),
          Row(
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
                      minimumSize: Size(37, 25),
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
                      minimumSize: Size(37, 25),
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
                      minimumSize: Size(37, 25),
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
                      minimumSize: Size(37, 25),
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
          Column(
            children: myList2,
          )
        ],
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
