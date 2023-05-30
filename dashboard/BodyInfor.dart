import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BodyInfor extends StatelessWidget {
  BodyInfor({super.key});

  final List<String> myList = [
    "Cara Membuat Caption yang Menarik",
    "Tips Edit Video",
    "SOW Influencer",
    "Peranan Influencer Dalam Mengkomunikasikan Produk",
    "Lika-Liku Pekerjaan Influencer"
  ];

  @override
  Widget build(BuildContext context) {
    final List<Padding> myList2 = List.generate(myList.length, (index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Card(
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
                    Icon(Icons.description),
                    SizedBox(
                      width: 8,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: 205,
                            child: Text(
                              myList[index],
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(35, 68, 105, 1)),
                            )),
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.chevron_right,
                            size: 24, color: Color.fromRGBO(35, 68, 105, 1)))
                  ],
                )),
          ),
        ),
      );
    });
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: myList2,
          ),
        ),
      ),
    );
  }
}
