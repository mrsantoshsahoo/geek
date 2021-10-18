// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CategoryMainPage extends StatelessWidget {
  String? name;
  CategoryMainPage({this.name});

  var scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: height * 0.25,
            decoration: BoxDecoration(
              color: Colors.indigo.shade600,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        name!,
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                      Icon(
                        Icons.notifications_none,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Container(
                    height: height * 0.08,
                    decoration: BoxDecoration(
                      color: Colors.white30,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: "What catagory are you searching ?",
                          hintStyle: TextStyle(color: Colors.white),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 30,
                          )),
                      cursorColor: Colors.white,
                      style: TextStyle(fontSize: 17.0, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Labels",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: height * 0.06,
                          //  width: width * 0.25,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border:
                                  Border.all(color: Colors.indigo, width: 1)),
                          child: Padding(
                              padding: EdgeInsets.only(left: 15, right: 15),
                              child: Icon(
                                Icons.add,
                                color: Colors.indigo,
                              )),
                        ),
                        roData(context,
                            dataa: "All", ccolor: Colors.indigo.shade100),
                        roData(context, dataa: "Cakes", ccolor: Colors.indigo),
                        roData(context,
                            dataa: "Fastfood", ccolor: Colors.indigo.shade100),
                        roData(context,
                            dataa: "Kabab", ccolor: Colors.indigo.shade100),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Bookmarks",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Icon(
                          Icons.delete,
                          color: Colors.indigo,
                          size: 30,
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Icon(
                          Icons.logout,
                          color: Colors.indigo,
                          size: 30,
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Icon(
                          Icons.arrow_drop_down_circle_outlined,
                          color: Colors.indigo,
                          size: 30,
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(
                      Icons.bookmark_outline_outlined,
                      color: Colors.grey,
                      size: 18,
                    ),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    Text(
                      "154",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                  return cards(context);
                })
                // cards(context),
                // Container(
                //     decoration: BoxDecoration(
                //       // ignore: prefer_const_literals_to_create_immutables
                //       boxShadow: [
                //         BoxShadow(
                //           color: Colors.grey,
                //           spreadRadius: -2,
                //           blurRadius: 5.0,
                //         ),
                //       ],
                //     ),
                //     child: cards(context)),
                // cards(context),
                // cards(context),
                // cards(context)
              ],
            ),
          ),
        ]),
      ),
 
    );
  }

  Widget roData(BuildContext context, {String? dataa, Color? ccolor}) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: 5),
      child: Container(
        alignment: Alignment.center,
        height: height * 0.06,
        decoration: BoxDecoration(
          color: ccolor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Text(
            dataa!,
            style: TextStyle(fontSize: 17, color: Colors.white),
          ),
        ),
      ),
    );
  }

 Widget cards(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Center(
        child: Container(
          width: width * 1,
          height: height * 0.1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.shade200,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 10),
                    child: Container(
                      child: Icon(
                        Icons.cake,
                        color: Colors.pink,
                        size: 40,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        "cupcake",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.notifications,
                            color: Colors.grey,
                            size: 22,
                          ),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                            size: 22,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: width * 0.2, right: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.orange,
                  ),
                  height: 35,
                  width: 35,
                  child: Icon(
                    Icons.library_books_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
