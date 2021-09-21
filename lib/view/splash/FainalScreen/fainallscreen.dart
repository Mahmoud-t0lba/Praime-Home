import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../controller/components/components.dart';
import '../../../res.dart';
import '../../home/home.dart';

class FainalScreen extends StatefulWidget {
  @override
  _FainalScreenState createState() => _FainalScreenState();
}

class _FainalScreenState extends State<FainalScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 1),
      () => navigateAndFinish(
        context,
        HomeScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 50, left: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(Res.login),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'تم حجز طلب المعاينه بنجاح سيكون موظفنا علي تواصل',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
