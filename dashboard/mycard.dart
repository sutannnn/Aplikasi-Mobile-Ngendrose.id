import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import '../todo.dart';
import 'detail.dart';
import 'home.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key, required this.myData});

  final List<Data> myData;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: myData.length,
      itemBuilder: (context, index) {
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
                              data: myData[index],
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
                        Image.asset(myData[index].image),
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
                                      myData[index].nama,
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
                                "Kuota : ${myData[index].kuota}  | ${myData[index].incom} Incoming Applicants",
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
                              myData[index].deadlines,
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
                            CurrencyFormat.convertToIdr(myData[index].payment, 0),
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
      },
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