import 'package:android_camera_comparison/primary/beranda.dart';
import 'package:flutter/material.dart';
import 'package:android_camera_comparison/models/lensa.dart';
import 'package:android_camera_comparison/services/remote_service_lensa.dart';

class DetailScreen extends StatefulWidget {

  DetailScreen({Key? key}) : super(key: key);

  @override
  _DetailScreen createState() => _DetailScreen();
}

class _DetailScreen extends State<DetailScreen> {

  @override

  @override
  Widget build(BuildContext context) {
    const Color colorone = Color.fromRGBO(140, 138, 255, 1);
    const Color colortwo = Color.fromRGBO(114, 91, 238, 1);
    const Color colorthree = Color.fromRGBO(182, 181, 244, 1);
    const Color colorfour = Color(0xff7158D2);
    const Color colorfive = Color(0xff947FEA);
    const Color colorsix = Color(0xff3A5CD6);
    const Color colorseven = Color(0xff6786F5);
    const Color coloreight = Color(0xffA78CFF);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Detail"),
          centerTitle: true,
          leading: BackButton(),
          elevation: 0,
          backgroundColor: colortwo,
          actions: [
            IconButton(
              padding: EdgeInsets.only(right: 20.0),
              icon: Image.asset('assets/img/white.png'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomePage()),
                );
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

              //Gambar Atas
              Container(
                constraints: BoxConstraints.expand(height: 350),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                  ),
                  color: coloreight,
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/img/lensa1.png',
                      height: 270,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Merek Camera',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ],
                ),
              ),
              //Jeda Spasi
              SizedBox(height: 10,),
              //Detail
              Container(
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                    color: coloreight
                ),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Padding(padding: EdgeInsets.all(15)),
                              Container(
                                height: 20.0,
                                width: 20.0,
                                decoration: new BoxDecoration(
                                  color: colorthree,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 5, right: 5)),
                              Expanded(
                                child: Text(
                                  'Jarak Pemfokusan Terdekat (m, kaki)',
                                  maxLines: 2,
                                  style: TextStyle(fontSize: 18, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'lensa.MakanMAKANMINUMMinum enkeanfodsnaofhaspohfopashdfpoh',
                          maxLines: 4,
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Column(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Padding(padding: EdgeInsets.all(15)),
                              Container(
                                height: 20.0,
                                width: 20.0,
                                decoration: new BoxDecoration(
                                  color: colorthree,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 5, right: 5)),
                              Expanded(
                                child: Text(
                                  'Jarak Pemfokusan Terdekat (m, kaki)',
                                  maxLines: 2,
                                  style: TextStyle(fontSize: 18, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'lensa.MakanMAKANMINUMMinum enkeanfodsnaofhaspohfopashdfpoh',
                          maxLines: 4,
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Column(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Padding(padding: EdgeInsets.all(15)),
                              Container(
                                height: 20.0,
                                width: 20.0,
                                decoration: new BoxDecoration(
                                  color: colorthree,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 5, right: 5)),
                              Expanded(
                                child: Text(
                                  'Jarak Pemfokusan Terdekat (m, kaki)',
                                  maxLines: 2,
                                  style: TextStyle(fontSize: 18, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'lensa.MakanMAKANMINUMMinum enkeanfodsnaofhaspohfopashdfpoh',
                          maxLines: 4,
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Column(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Padding(padding: EdgeInsets.all(15)),
                              Container(
                                height: 20.0,
                                width: 20.0,
                                decoration: new BoxDecoration(
                                  color: colorthree,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 5, right: 5)),
                              Expanded(
                                child: Text(
                                  'Jarak Pemfokusan Terdekat (m, kaki)',
                                  maxLines: 2,
                                  style: TextStyle(fontSize: 18, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'lensa.MakanMAKANMINUMMinum enkeanfodsnaofhaspohfopashdfpoh',
                          maxLines: 4,
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Column(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Padding(padding: EdgeInsets.all(15)),
                              Container(
                                height: 20.0,
                                width: 20.0,
                                decoration: new BoxDecoration(
                                  color: colorthree,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 5, right: 5)),
                              Expanded(
                                child: Text(
                                  'Jarak Pemfokusan Terdekat (m, kaki)',
                                  maxLines: 2,
                                  style: TextStyle(fontSize: 18, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'lensa.MakanMAKANMINUMMinum enkeanfodsnaofhaspohfopashdfpoh',
                          maxLines: 4,
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Column(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Padding(padding: EdgeInsets.all(15)),
                              Container(
                                height: 20.0,
                                width: 20.0,
                                decoration: new BoxDecoration(
                                  color: colorthree,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 5, right: 5)),
                              Expanded(
                                child: Text(
                                  'Jarak Pemfokusan Terdekat (m, kaki)',
                                  maxLines: 2,
                                  style: TextStyle(fontSize: 18, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'lensa.MakanMAKANMINUMMinum enkeanfodsnaofhaspohfopashdfpoh',
                          maxLines: 4,
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Column(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Padding(padding: EdgeInsets.all(15)),
                              Container(
                                height: 20.0,
                                width: 20.0,
                                decoration: new BoxDecoration(
                                  color: colorthree,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 5, right: 5)),
                              Expanded(
                                child: Text(
                                  'Jarak Pemfokusan Terdekat (m, kaki)',
                                  maxLines: 2,
                                  style: TextStyle(fontSize: 18, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'lensa.MakanMAKANMINUMMinum enkeanfodsnaofhaspohfopashdfpoh',
                          maxLines: 4,
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}