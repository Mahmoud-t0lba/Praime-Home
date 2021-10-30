import 'package:flutter/material.dart';

import '../../res.dart';
import '../home/home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 2),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen(),
          ),
        );
        // ExtendedNavigator.root.push(
        //   Routes.askedView,
        // );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(right: 40, left: 40),
        child: Container(
          // margin: EdgeInsets.only(right: 40, left: 40),
          child: Center(
            child: Image.asset(Res.login),
          ),
        ),
      ),
    );
  }
}
