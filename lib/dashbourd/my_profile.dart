import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:task_ui_digipai_final/dashbourd/my_dashbourd.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyScaffold(),

      // bottom_navigation
      bottomNavigationBar: BottomNavigationBar(currentIndex: 0, items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.red,
          ),
          label: 'home',
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.menu,
            color: Colors.grey[600],
          ),
          label: 'Dashbourd',
          backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: Colors.grey[600],
          ),
          label: 'About Us',
          backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.contact_page_rounded,
            color: Colors.grey[600],
          ),
          label: 'Contact Us',
          backgroundColor: Colors.blue,
        ),
      ]),
    );
  }
}

class MyScaffold extends StatefulWidget {
  MyScaffold({Key? key}) : super(key: key);

  @override
  State<MyScaffold> createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold> {
  @override
  Widget build(BuildContext context) {
    // main ma stack mukyu hatu pan proper work na thayu badhu ek ni upr ek hatu pachi kadhi ne
    // container mukyu
    return Container(
        child: SingleChildScrollView(
      child: Column(
        children: [
// row ma text & icon che
          Row(
            children: [
              const SizedBox(
                height: 190,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  width: 240,
                  //margin: EdgeInsets.fromLTRB(1, 1, 20, 1),
                  child: const Text(
                    'Where would you like to travell? ',
                    style:
                        TextStyle(fontSize: 27.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => DBourd())),
                child: Container(
                  // margin: EdgeInsets.only(left: 22),
                  child: const CircleAvatar(
                    radius: 27.0,
                    backgroundImage: NetworkImage(
                      "https://res.cloudinary.com/dpyy9uysx/image/upload/v1558154284/coinjoker/801997_user_512x512.png",
                    ),
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: EdgeInsets.all(20),
            child: Container(
              child: TextField(
                textAlign: TextAlign.end,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.person_add,
                      color: Theme.of(context).iconTheme.color),
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                  contentPadding: EdgeInsets.zero,
                  hintText: 'Search',
                ),
              ),
            ),
          ),
//flight_train container with scrolldown
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(180),
                        color: Colors.grey[300]),
                    child: Text("All"),
                    alignment: Alignment.center,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 40,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(180),
                        color: Colors.redAccent),
                    child: Text(
                      "Flight",
                      style: TextStyle(color: Colors.white),
                    ),
                    alignment: Alignment.center,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 40,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(180),
                        color: Colors.grey[300]),
                    child: Text(
                      "Cruise",
                    ),
                    alignment: Alignment.center,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 40,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(180),
                        color: Colors.grey[300]),
                    child: Text(
                      "Train",
                    ),
                    alignment: Alignment.center,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 40,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(180),
                        color: Colors.grey[300]),
                    child: Text(
                      "Bus",
                    ),
                    alignment: Alignment.center,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 40,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(180),
                        color: Colors.grey[300]),
                    child: Text(
                      "Ricksha",
                    ),
                    alignment: Alignment.center,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 40,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(180),
                        color: Colors.grey[300]),
                    child: Text(
                      "Cycle",
                    ),
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ),

          SizedBox(
            height: 30,
          ),

// Staggered / c
          Padding(
            padding: EdgeInsets.all(8),
            child: StaggeredGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              children: [
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('images/grid_one.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        child: Row(children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(40, 1, 1, 4),
                            child: Text(
                              "Meggi",
                              style: TextStyle(
                                  fontSize: 29.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 50,
                            margin: EdgeInsets.fromLTRB(10, 1, 1, 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              '\$120',
                              textAlign: TextAlign.center,
                            ),
                            alignment: Alignment.center,
                          )
                        ]),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 190,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('images/grid_two.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        child: Row(children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(40, 1, 1, 4),
                            child: Text(
                              "Two",
                              style: TextStyle(
                                  fontSize: 29.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 50,
                            margin: EdgeInsets.fromLTRB(10, 1, 1, 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              '\$270',
                              textAlign: TextAlign.center,
                            ),
                            alignment: Alignment.center,
                          )
                        ]),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('images/grid_three.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        child: Row(children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(40, 1, 1, 4),
                            child: Text(
                              "Span",
                              style: TextStyle(
                                  fontSize: 29.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 50,
                            margin: EdgeInsets.fromLTRB(10, 1, 1, 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              '\$340',
                              textAlign: TextAlign.center,
                            ),
                            alignment: Alignment.center,
                          )
                        ]),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('images/grid_four.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        child: Row(children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(40, 1, 1, 4),
                            child: Text(
                              "nine",
                              style: TextStyle(
                                  fontSize: 29.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 50,
                            margin: EdgeInsets.fromLTRB(10, 1, 1, 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              '\$550',
                              textAlign: TextAlign.center,
                            ),
                            alignment: Alignment.center,
                          )
                        ]),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('images/grid_five.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        child: Row(children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(40, 1, 1, 4),
                            child: Text(
                              "four",
                              style: TextStyle(
                                  fontSize: 29.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 50,
                            margin: EdgeInsets.fromLTRB(10, 1, 1, 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              '\$660',
                              textAlign: TextAlign.center,
                            ),
                            alignment: Alignment.center,
                          )
                        ]),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('images/grid_six.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        child: Row(children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(40, 1, 1, 4),
                            child: Text(
                              "five",
                              style: TextStyle(
                                  fontSize: 29.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 50,
                            margin: EdgeInsets.fromLTRB(10, 1, 1, 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              '\$750',
                              textAlign: TextAlign.center,
                            ),
                            alignment: Alignment.center,
                          )
                        ]),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('images/grid_seven.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        child: Row(children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(40, 1, 1, 4),
                            child: Text(
                              "Six",
                              style: TextStyle(
                                  fontSize: 29.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 50,
                            margin: EdgeInsets.fromLTRB(10, 1, 1, 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              '\$360',
                              textAlign: TextAlign.center,
                            ),
                            alignment: Alignment.center,
                          )
                        ]),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
