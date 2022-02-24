import 'dart:async';

import 'package:flutter/material.dart';
import 'package:task_ui_digipai_final/dashbourd/my_dashbourd.dart';
import 'package:task_ui_digipai_final/dashbourd/my_dbourd_pretice.dart';
import 'package:task_ui_digipai_final/dashbourd/my_new_dashbourd.dart';
import 'package:task_ui_digipai_final/dashbourd/my_profile.dart';

void main() {
  runApp(MySplash());
}

class MySplash extends StatelessWidget {
  const MySplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MyStackSplash(),
      ),
    );
  }
}

class MyStackSplash extends StatefulWidget {
  MyStackSplash({Key? key}) : super(key: key);

  @override
  State<MyStackSplash> createState() => _MyStackSplashState();
}

class _MyStackSplashState extends State<MyStackSplash> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 8),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MyProfile())));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              image: AssetImage('images/air.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 40),
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                "Travel with my comfortable and sefty",
                style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              MaterialButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                elevation: 5.0,
                minWidth: 100.0,
                height: 35,
                color: Color(0xFF801E48),
                child: new Text('Sign up',
                    style: new TextStyle(fontSize: 16.0, color: Colors.white)),
              )
            ],
          ),
        ),
      ],
    );
  }
}

