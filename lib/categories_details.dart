// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CategoryDetails extends StatelessWidget {
  String? name;
  CategoryDetails({this.name});
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
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
                 
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
