import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';

class MyDBourdPretice extends StatefulWidget {
  MyDBourdPretice({Key? key}) : super(key: key);

  @override
  State<MyDBourdPretice> createState() => _MyDBourdPreticeState();
}

class _MyDBourdPreticeState extends State<MyDBourdPretice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _backgroundImage(),
          _backButton(),
          _myContainer(),
        ],
      ),
    );
  }

// game te widget banavi to last carlibrecket ni ander mukvanu ne
  Widget _backgroundImage() {
    return Image.asset(
      'images/taj.jpg',
      fit: BoxFit.cover,
      height: MediaQuery.of(context).size.height,
    );
  }

  Widget _backButton() {
    return Positioned(
      left: 20.0,
      height: MediaQuery.of(context).size.height * 0.2,
      //width: MediaQuery.of(context).size.width * 0.,
      // align widget lidhu to pan nai thatu
      child: const CircleAvatar(
        backgroundColor: Colors.white,
        radius: 17,
        child: Center(
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  Widget _myContainer() {
    return Positioned(
        bottom: 0,
        child: Container(
          height: 604,
          width: MediaQuery.of(context).size.width,
          //color: Colors.green,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40),
              topLeft: Radius.circular(40),
            ),
            color: Colors.white,
          ),
          child: _myTabContainer(),
        ));
  }

  Widget _myTabContainer() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      //color: Colors.yellow,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.redAccent),
                margin: EdgeInsets.fromLTRB(90, 0, 0, 0),
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.17,
                //color: Colors.green,
                alignment: Alignment.center,
                child: Text(
                  'Avia',
                  style: TextStyle(
                      fontSize: 19.9,
                      //fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey),
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.17,
                //color: Colors.green,
                alignment: Alignment.center,
                child: Text(
                  'Train',
                  style: TextStyle(
                      fontSize: 19.9,
                      //fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey),
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.17,
                //color: Colors.green,
                alignment: Alignment.center,
                child: Text(
                  'Car',
                  style: TextStyle(
                      fontSize: 19.9,
                      //fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "2 Tickets",
              style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold),
            ),
          ),

          //
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              height: 169,
              //color: Colors.blue,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.circle_outlined,
                        color: Colors.redAccent,
                        size: 15,
                      ),
                      DottedLine(
                        direction: Axis.horizontal,
                        lineLength: 120,
                        lineThickness: 1.0,
                        dashLength: 4.0,
                        dashColor: Colors.black,
                      ),
                      RotatedBox(
                        quarterTurns: 5,
                        child: Icon(
                          Icons.airplanemode_on_sharp,
                          color: Colors.redAccent,
                          size: 20,
                          // textDirection: TextDirection.ltr,
                        ),
                      ),
                      DottedLine(
                        direction: Axis.horizontal,
                        lineLength: 130,
                        lineThickness: 1.0,
                        dashLength: 4.0,
                        dashColor: Colors.black,
                      ),
                      Icon(
                        Icons.circle_outlined,
                        color: Colors.black,
                        size: 15,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'New York',
                        style: TextStyle(color: Colors.grey, fontSize: 14.0),
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      Text(
                        '12Th',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.07),
                      ),
                      SizedBox(
                        width: 56,
                      ),
                      Text(
                        'Great Britain',
                        style: TextStyle(color: Colors.grey, fontSize: 13.0),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(
                      '10:40am',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 190,
                    ),
                    Text(
                      '12:40am',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ]),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(
                      '4.26.2021,Tue',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 140,
                    ),
                    Text(
                      '4.27.2021,Wed',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ]),
                  SizedBox(
                    height: 30,
                  ),
                  DottedLine(
                    direction: Axis.horizontal,
                    lineLength: 300,
                    lineThickness: 1.0,
                    dashLength: 4.0,
                    dashColor: Colors.black,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Row(children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.brush,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text('American Airlines'),
                      SizedBox(
                        width: 100,
                      ),
                      Text(
                        '\$120',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ]),
                  )
                ],
                // aaya thi 2 mukyu che
              ),
            ),
          ),

          // main Color padding
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              height: 140,
              //  color: Colors.green,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.circle_outlined,
                        color: Colors.redAccent,
                        size: 15,
                      ),
                      DottedLine(
                        direction: Axis.horizontal,
                        lineLength: 120,
                        lineThickness: 1.0,
                        dashLength: 4.0,
                        dashColor: Colors.black,
                      ),
                      RotatedBox(
                        quarterTurns: 5,
                        child: Icon(
                          Icons.airplanemode_on_sharp,
                          color: Colors.redAccent,
                          size: 20,
                        ),
                      ),
                      DottedLine(
                        direction: Axis.horizontal,
                        lineLength: 130,
                        lineThickness: 1.0,
                        dashLength: 4.0,
                        dashColor: Colors.black,
                      ),
                      Icon(
                        Icons.circle_outlined,
                        color: Colors.black,
                        size: 15,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'New York',
                        style: TextStyle(color: Colors.grey, fontSize: 14.0),
                      ),
                      SizedBox(
                        width: 56,
                      ),
                      Text(
                        '12Th',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        'Great Breatain',
                        style: TextStyle(color: Colors.grey, fontSize: 13.0),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(
                      '12:22am',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 200,
                    ),
                    Text(
                      '2:22am',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ]),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(
                      '4.26.2021,Tue',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 140,
                    ),
                    Text(
                      '4.27.2021,Wed',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ]),
                  SizedBox(
                    height: 30,
                  ),
                  DottedLine(
                    direction: Axis.horizontal,
                    lineLength: 300,
                    lineThickness: 1.0,
                    dashLength: 4.0,
                    dashColor: Colors.black,
                  ),
                ],
                // aaya thi 2 mukyu che
              ),
            ),
          ),
        ],
      ),
    );
  }
}
