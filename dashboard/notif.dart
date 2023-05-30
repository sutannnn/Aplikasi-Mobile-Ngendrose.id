import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyNotif extends StatelessWidget {
  const MyNotif({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> myBodys = [
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/notif.png"),
            Text("Empty", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Color.fromRGBO(20, 20, 20, 0.5)),),
            SizedBox(height: 8,),
            Text("You don’t have any notifications at this time", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Color.fromRGBO(20, 20, 20, 0.5)),)
          ],
        )
      )
      
    ];

    return Scaffold(
      backgroundColor: Color.fromRGBO(198, 206, 214, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(198, 206, 214, 1),
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Notification",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.more_horiz),
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: DefaultTabController(
            length: 2,
            child: TabBar(
              indicatorColor: Color.fromRGBO(35, 68, 105, 1),
              tabs: [
                Tab(
                  child: Text("General", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Color.fromRGBO(35, 68, 105, 1)),),
                ),
                Tab(
                  child: Text("Aplications", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Color.fromRGBO(35, 68, 105, 1)),),
                )
              ],
            ),
          ),
        ),
      ),
      body: myBodys[0]
    );
  }
}
