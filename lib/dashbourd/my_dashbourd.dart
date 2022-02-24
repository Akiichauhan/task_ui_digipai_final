import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';

class DBourd extends StatelessWidget {
  const DBourd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyMenu(),
    );
  }
}

class MyMenu extends StatefulWidget {
  MyMenu({Key? key}) : super(key: key);

  @override
  State<MyMenu> createState() => _MyMenuState();
}

class _MyMenuState extends State<MyMenu> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              image: AssetImage('images/grid_ten.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            height: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40), topLeft: Radius.circular(40)),
              color: Colors.white,
            ),

            // aama mare padding levu padyu and pachi color add karvo padyi
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // 3 tab
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //  Tabbar ni jagya e aama container no use thayo che

                      Container(
                        margin: EdgeInsets.fromLTRB(60, 20, 1, 1),
                        //color: Colors.deepPurpleAccent,
                        alignment: Alignment.center,
                        height: 40,
                        width: 80,
                        child: Text(
                          "Train",
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(180),
                            color: Colors.red[500]),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 20, 1, 1),
                        //color: Colors.deepPurpleAccent,
                        alignment: Alignment.center,
                        height: 40,
                        width: 80,
                        child: Text(
                          "Air",
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(180),
                            color: Colors.grey[300]),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 20, 1, 1),
                        //color: Colors.deepPurpleAccent,
                        alignment: Alignment.center,
                        height: 40,
                        width: 80,
                        child: Text(
                          "Avia",
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(180),
                            color: Colors.grey[300]),
                      ),
                    ],
                  ),

                  // sizedbox with 2 tickets

                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Text(
                      "2 Tickets",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
// Icon & DotedLine
// aama linelength 112 aapu chu to kem aam thay che
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.circle,
                            size: 18,
                            color: Colors.red,
                          ),
                          DottedLine(
                            direction: Axis.horizontal,
                            //lineLength: double.infinity,
                            lineLength: 130,
                            lineThickness: 1.0,
                            dashLength: 4.0,
                            dashColor: Colors.black,
                            //dashGradient: [Colors.red, Colors.blue],
                            // dashRadius: 0.0,
                            // dashGapLength: 4.0,
                            // dashGapColor: Colors.transparent,
                            // dashGapGradient: [Colors.red, Colors.blue],
                            // dashGapRadius: 0.0,
                          ),
                          Icon(
                            Icons.airplanemode_active,
                            size: 18,
                            color: Colors.red,
                          ),
                          DottedLine(
                            direction: Axis.horizontal,
                            //lineLength: double.infinity,
                            lineLength: 132,
                            lineThickness: 1.0,
                            dashLength: 4.0,
                            dashColor: Colors.black,
                            //dashGradient: [Colors.red, Colors.blue],
                            // dashRadius: 0.0,
                            // dashGapLength: 4.0,
                            // dashGapColor: Colors.transparent,
                            // dashGapGradient: [Colors.red, Colors.blue],
                            // dashGapRadius: 0.0,
                          ),
                          Icon(
                            Icons.circle,
                            size: 18,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  // Container with Row new Yourk

                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Row(children: [
                      Text(
                        "New York",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        width: 90,
                      ),
                      Text(
                        "12h",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Text(
                        "Great Bratain",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: EdgeInsets.all(17),
                    child: Row(
                      children: [
                        Text(
                          "10:40am",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 205,
                        ),
                        Text(
                          "12:40pm",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  //Container_Row_time
                  Container(
                    margin: EdgeInsets.only(left: 14, bottom: 20),
                    child: Row(
                      children: [
                        Text(
                          "4:26:2021,Tue",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey),
                        ),
                        SizedBox(
                          width: 145,
                        ),
                        Text(
                          "4:27:2021,Wed",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
// only dotted
                  DottedLine(
                    direction: Axis.horizontal,
                    //lineLength: double.infinity,
                    lineLength: 260,
                    lineThickness: 1.0,
                    dashLength: 4.0,
                    dashColor: Colors.black,
                    //dashGradient: [Colors.red, Colors.blue],
                    // dashRadius: 0.0,
                    // dashGapLength: 4.0,
                    // dashGapColor: Colors.transparent,
                    // dashGapGradient: [Colors.red, Colors.blue],
                    // dashGapRadius: 0.0,
                  ),
// icon text and sizedbox
//
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.brush,
                          size: 18,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'American Airlines',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          width: 120,
                        ),
                        Text(
                          '\$120',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),

                  // repeat again
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.circle,
                            size: 18,
                            color: Colors.red,
                          ),
                          DottedLine(
                            direction: Axis.horizontal,
                            //lineLength: double.infinity,
                            lineLength: 130,
                            lineThickness: 1.0,
                            dashLength: 4.0,
                            dashColor: Colors.black,
                            //dashGradient: [Colors.red, Colors.blue],
                            // dashRadius: 0.0,
                            // dashGapLength: 4.0,
                            // dashGapColor: Colors.transparent,
                            // dashGapGradient: [Colors.red, Colors.blue],
                            // dashGapRadius: 0.0,
                          ),
                          Icon(
                            Icons.airplanemode_active,
                            size: 18,
                            color: Colors.red,
                          ),
                          DottedLine(
                            direction: Axis.horizontal,
                            //lineLength: double.infinity,
                            lineLength: 132,
                            lineThickness: 1.0,
                            dashLength: 4.0,
                            dashColor: Colors.black,
                            //dashGradient: [Colors.red, Colors.blue],
                            // dashRadius: 0.0,
                            // dashGapLength: 4.0,
                            // dashGapColor: Colors.transparent,
                            // dashGapGradient: [Colors.red, Colors.blue],
                            // dashGapRadius: 0.0,
                          ),
                          Icon(
                            Icons.circle,
                            size: 18,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  // Container with Row new Yourk

                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Row(children: [
                      Text(
                        "New York",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        width: 90,
                      ),
                      Text(
                        "12h",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Text(
                        "Great Bratain",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: EdgeInsets.all(17),
                    child: Row(
                      children: [
                        Text(
                          "12:22am",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 205,
                        ),
                        Text(
                          "02:22am",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  //Container_Row_time
                  Container(
                    margin: EdgeInsets.only(left: 14, bottom: 20),
                    child: Row(
                      children: [
                        Text(
                          "4:26:2021,Tue",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey),
                        ),
                        SizedBox(
                          width: 145,
                        ),
                        Text(
                          "4:27:2021,Wed",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
