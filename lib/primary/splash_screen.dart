import 'dart:async';
import 'package:flutter/material.dart';
import 'package:android_camera_comparison/primary/beranda.dart';
import 'package:android_camera_comparison/detail_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  //ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Image.asset(
          'assets/img/intro.png',
          fit: BoxFit.cover,
          width: size.width,
          height: size.height,
        ),
      ),
    );
  }
  // Widget build(BuildContext context){
  //   return Scaffold(
  //     backgroundColor: Colors.white,
  //     body: Center(
  //       child: Card(
  //         child: Image.asset(
  //           'assets/img/intro.png',
  //           fit: BoxFit.cover,
  //         ),
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(10.0),
  //         ),
  //         elevation: 5,
  //         margin: EdgeInsets.all(10),
  //       ),
  //     ),
  //   );
  // }
}
