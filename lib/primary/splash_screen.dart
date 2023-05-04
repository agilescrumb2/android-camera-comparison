import 'dart:async';
import 'package:android_camera_comparison/secondary/list_body.dart';
import 'package:flutter/material.dart';
import 'package:android_camera_comparison/primary/beranda.dart';
import 'package:android_camera_comparison/model/kamera_list.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:android_camera_comparison/model/kamera_list.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  //ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  List<KameraList> listKamera = [];
  ListKamera listbody = ListKamera();

  fetchCameraData() async {
    listKamera = await listbody.fetchCameraData();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    fetchCameraData();
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
