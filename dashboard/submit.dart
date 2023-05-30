import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/dashboard/provider.dart';
import 'package:provider/provider.dart';
import 'home.dart';

class Submit extends StatefulWidget {
  Submit({super.key, required this.data});

  final Data data;

  @override
  State<Submit> createState() => _SubmitState(data);
}

class _SubmitState extends State<Submit> {
  final Data data;

  _SubmitState(this.data);
  @override
  Widget build(BuildContext context) {
    var cart = CartModel();
    return Scaffold(
      backgroundColor: Color.fromRGBO(198, 206, 214, 1),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color.fromRGBO(198, 206, 214, 1),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(Icons.question_mark, color: Color.fromRGBO(35, 68, 105, 1),),
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 272,
                height: 64,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(198, 206, 214, 1),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 10)]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 260,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "View campaign briefs",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w400),
                        )),
                    SizedBox(
                      width: 260,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            data.nama,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(35, 68, 105, 1),
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: Color.fromRGBO(35, 68, 105, 1),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 8,),
              Container(
                width: 272,
                height: 64,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(198, 206, 214, 1),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 10)]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 260,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.question_answer_outlined,
                            color: Color.fromRGBO(35, 68, 105, 1),
                          ),
                          Container(
                              width: 190,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Discusion",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(35, 68, 105, 1),
                                ),
                              )),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: Color.fromRGBO(35, 68, 105, 1),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 8,),
              Container(
                width: 272,
                height: 204,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(198, 206, 214, 1),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 10)]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 255,
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Icon(
                            Icons.file_upload_outlined,
                            color: Color.fromRGBO(35, 68, 105, 1),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Upload Content",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.fromRGBO(35, 68, 105, 1),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 255,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Photo",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(35, 68, 105, 1),
                        ),
                      ),
                    ),
                    Container(
                      width: 255,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "PNG or JPG format with a maximum size of 4 MB",
                        style:
                            TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                      ),
                    ),
                    Container(
                      width: 255,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Video",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(35, 68, 105, 1),
                        ),
                      ),
                    ),
                    Container(
                      width: 255,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "MP4 with a maximum size of 16 MbB",
                        style:
                            TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                      ),
                    ),
                    Container(
                      width: 255,
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Submit(
                                        data: data,
                                      )));
                        },
                        child: Text(
                          "Submit",
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(35, 68, 105, 1),
                          minimumSize: Size(108, 25),
                          maximumSize: Size(108, 25),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8,),
              Container(
                width: 272,
                alignment: Alignment.center,
                child: Material(
                  elevation: 5,
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                  child: TextFormField(
                      minLines: 2,
                      maxLines: 10,
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromRGBO(198, 206, 214, 1),
                          label: Text(
                            "Deskripsi",
                            style: TextStyle(color: Colors.black38),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(198, 206, 214, 1)),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(8),
                                  topLeft: Radius.circular(8),
                                  bottomLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(8))),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromRGBO(198, 206, 214, 1),
                              ),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(8),
                                  topLeft: Radius.circular(8),
                                  bottomLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(8))),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          )))),
                ),
              ),
              SizedBox(height: 8,),
              Container(
                width: 272,
                height: 44,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(198, 206, 214, 1),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 10)]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 260,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.remove_red_eye_outlined,
                            color: Color.fromRGBO(35, 68, 105, 1),
                          ),
                          Container(
                              width: 190,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "See submition conditions",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(35, 68, 105, 1),
                                ),
                              )),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: Color.fromRGBO(35, 68, 105, 1),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 8,),
              Container(
                width: 272,
                height: 44,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(198, 206, 214, 1),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 10)]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 260,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.remove_red_eye_outlined,
                            color: Color.fromRGBO(35, 68, 105, 1),
                          ),
                          Container(
                              width: 190,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Read terms & conditions",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(35, 68, 105, 1),
                                ),
                              )),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: Color.fromRGBO(35, 68, 105, 1),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 8,),
              ElevatedButton(
                onPressed: () {
                  context.read<CartModel>().add(data);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyHome()));
                },
                child: Text(
                  "Submit",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(35, 68, 105, 1),
                    minimumSize: Size(274, 30),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Color.fromRGBO(35, 68, 105, 1)),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
