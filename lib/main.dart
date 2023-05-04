import 'package:flutter/material.dart';
import 'package:android_camera_comparison/primary/splash_screen.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_launcher_icons/main.dart';
import 'dart:convert';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'CAMERIS',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
