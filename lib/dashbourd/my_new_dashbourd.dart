import 'package:flutter/material.dart';

class MyNewDashboard extends StatefulWidget {
  const MyNewDashboard({Key? key}) : super(key: key);

  @override
  State<MyNewDashboard> createState() => _MyNewDashboardState();
}

class _MyNewDashboardState extends State<MyNewDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _backgroundImageWidget(),
          _backButtonWidget(),
          _dashboardDataWidget(),
        ],
      ),
    );
  }

  Widget _backgroundImageWidget() {
    return Image.asset(
      'images/grid_ten.jpg',
      fit: BoxFit.cover,
      height: MediaQuery.of(context).size.height,
    
    );
  }

  Widget _backButtonWidget() {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.07,
      left: MediaQuery.of(context).size.width * 0.05,
      child: const CircleAvatar(
        backgroundColor: Colors.white,
        radius: 18,
        child: Icon(
          Icons.arrow_back_ios,
          size: 15,
        ),
      ),
    );
  }

  Widget _dashboardDataWidget() {
    return Positioned(
      // top: MediaQuery.of(context).size.height * 0.8,
      bottom: 0,
      child: Container(
        height: 300,
        width: MediaQuery.of(context).size.width,
        color: Colors.red,
      ),
    );
  }
}
