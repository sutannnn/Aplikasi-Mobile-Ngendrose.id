import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BodyWallet extends StatelessWidget {
  const BodyWallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 276,
                height: 159,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage('images/card.png'))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 125,
                      height: 159,
                      color: Colors.transparent,
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(229, 229, 160, 1),
                              borderRadius: BorderRadius.circular(100)),
                          child: Image.asset('images/e.png'),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          width: 145,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Name",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: Text(
                                  "04/12",
                                  style: TextStyle(
                                      fontSize: 8,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 145,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Fadil Zaidi",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w600, color: Colors.white),
                          ),
                        ),
                        Container(
                          width: 145,
                          height: 67,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "**** **** **** 9870",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w500, color: Colors.white),
                          ),
                        ),
                        Container(
                          width: 145,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Balance",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w300, color: Colors.white),
                          ),
                        ),
                        Container(
                          width: 145,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Rp7.000.000",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w600, color: Colors.white),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: 35,
                height: 159,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(161, 177, 194, 1),
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                    child: Icon(
                  Icons.add,
                  color: Color.fromRGBO(35, 68, 105, 1),
                )),
              )
            ],
          ),
          Container(
            width: 300,
            child: Text(
              "Categories",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  width: 67,
                  height: 73,
                  child: Column(
                    children: [
                      Container(
                        height: 52,
                        width: 52,
                        child: Image.asset(
                          'images/payment.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Text(
                        "Payment",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w400),
                      )
                    ],
                  )),
              Container(
                  width: 67,
                  height: 76,
                  child: Column(
                    children: [
                      Container(
                        height: 52,
                        width: 52,
                        child: Image.asset(
                          'images/with.png',
                        ),
                      ),
                      Text(
                        "E-money withdrawal",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w400),
                      ),
                    ],
                  )),
              Container(
                  width: 67,
                  height: 76,
                  child: Column(
                    children: [
                      Container(
                        height: 52,
                        width: 52,
                        child: Image.asset('images/send.png'),
                      ),
                      Text(
                        "Send money",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w400),
                      )
                    ],
                  )),
              Container(
                  width: 67,
                  height: 76,
                  child: Column(
                    children: [
                      Container(
                        height: 52,
                        width: 52,
                        child: Image.asset(
                          'images/more.png',
                        ),
                      ),
                      Text(
                        "More",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w400),
                      )
                    ],
                  )),
            ],
          ),
          Container(
            width: 320,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Transaction",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "See all",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(35, 68, 105, 1),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 330,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 105,
                  height: 105,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(161, 177, 194, 1)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 6),
                            child: Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color.fromRGBO(229, 229, 160, 1),
                                  image: DecorationImage(
                                      image: AssetImage('images/eat.png'))),
                            ),
                          ),
                          InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.more_vert,
                                color: Color.fromRGBO(35, 68, 105, 1),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Eat Sambal",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          "Rp80.000",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(35, 68, 105, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 105,
                  height: 105,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(161, 177, 194, 1)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 6),
                            child: Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color.fromRGBO(229, 229, 160, 1),
                                  image: DecorationImage(
                                      image: AssetImage('images/eat.png'))),
                            ),
                          ),
                          InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.more_vert,
                                color: Color.fromRGBO(35, 68, 105, 1),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Eat Sambal",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          "Rp80.000",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(35, 68, 105, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
