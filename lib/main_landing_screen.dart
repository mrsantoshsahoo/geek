// ignore_for_file: prefer_const_constructors, unnecessary_, deprecated_member_use, unnecessary_new
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'category.dart';
import 'data_list.dart';

class MainLandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.indigo.shade600,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                ),
                child: Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: height * 0.05,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Icon(
                            Icons.dashboard,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.notifications_none,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Text(
                        "Hii GeekAnt",
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                      SizedBox(
                        height: height * 0.005,
                      ),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            "Wellcome Back",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        height: 40,
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
                padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Categoies",
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
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Icon(
                          Icons.logout,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Icon(
                          Icons.arrow_drop_down_circle_outlined,
                          color: Colors.indigo,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: GridView.builder(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemCount: mydata.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CategoryMainPage(
                                        name: mydata[index]["cname"],
                                      )));
                        },
                        child: Catagory(
                            cname: mydata[index]["cname"],
                            ccolor: mydata[index]["ccolor"],
                            dcolor: mydata[index]["dcolor"],
                            iicon: mydata[index]["cicon"]),
                      );
                    }),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          notchMargin: 1,
          child: Container(
            //  height: 60,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 15, bottom: 15, left: 35, right: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.home,
                    size: 30,
color: Colors.indigo.shade600,
                  ),
                  Icon(
                    Icons.star_border_outlined,
                    size: 30,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),
        )

        // Container(
        //   child: Stack(
        //     children: [
        //       Padding(
        //         padding: const EdgeInsets.all(15),
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //           children: [
        //             Container(
        //               child: Icon(Icons.home),
        //             ),
        //             Container(
        //               child: Icon(Icons.home),
        //             )
        //           ],
        //         ),
        //       ),
        //       Positioned(
        //         top: -15,
        //         left: 170,
        //           child: Container(
        //            decoration: BoxDecoration(
        //              borderRadius: BorderRadius.circular(50),
        //              color: Colors.blue
        //            ),
        //             height: 50,
        //             width: 50,
        //         child: Icon(Icons.add,color: Colors.white,)
        //       ))
        //     ],
        //   ),
        // ),

        );
  }
}

class Catagory extends StatelessWidget {
  Color? ccolor;
  Color? dcolor;
  IconData? iicon;
  String? cname;
  Catagory({this.ccolor, this.iicon, this.cname, this.dcolor});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: ccolor,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            child: Icon(
              iicon,
              size: 40,
              color: dcolor,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            cname!,
            style: TextStyle(
                fontSize: 18, color: dcolor, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
