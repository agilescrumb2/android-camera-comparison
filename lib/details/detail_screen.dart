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
  Widget build(BuildContext context) {
    const Color colorone = Color(0xff7A58E6);
    const Color colortwo = Color.fromRGBO(114, 91, 238, 1);
    const Color colorthree = Color.fromRGBO(182, 181, 244, 1);
    const Color colorfour = Color(0xffCA61FF);
    const Color colorfive = Color(0xff947FEA);
    const Color colorsix = Color(0xff3A5CD6);
    const Color colorseven = Color(0xff6786F5);
    const Color coloreight = Color(0xffA78CFF);

    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: colorone,
            title: Text("Deskripsi"),
            centerTitle: true,
            actions: [
              IconButton(
                padding: EdgeInsets.only(right: 20.0),
                icon: Image.asset('assets/img/white.png'),
                onPressed: (){
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
                //Container Kotak Atas
                Container(
                  height: MediaQuery.of(context).size.height *29/80,
                  decoration: BoxDecoration(
                      color: Colors.white
                  ),
                  child: Stack(
                    children: [
                      // Kotak Cengkung Atas
                      Container (
                        constraints: BoxConstraints.expand(height: MediaQuery.of(context).size.height *3/16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(40),
                            bottomLeft: Radius.circular(40),
                          ),
                          color: colorone,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          children: [
                            Container(
                              constraints: BoxConstraints.expand(
                                height: MediaQuery.of(context).size.width * 5 / 9,
                                width: MediaQuery.of(context).size.width * 5 / 9,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: Offset(0, 3), // changes the position of the shadow
                                  ),
                                ],
                              ),
                              child: FractionallySizedBox(
                                heightFactor: 0.7, // Set the height factor to 0.5 (50% of available height)
                                child: Image.asset(
                                  'assets/img/lensa1.png',
                                  fit: BoxFit.fitHeight, // Ensu

                                  // re the image maintains its aspect ratio
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Merek Camera',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),

                      )
                    ],
                  ),
                ),
                //Container Deskripsi
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width *5/80,
                          right: MediaQuery.of(context).size.width *5/80,
                        ),
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height *2/80,
                          bottom: MediaQuery.of(context).size.height *2/80,
                          left: 0,
                          right: 0
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white
                        ),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(right: 15),
                                    height: 20.0,
                                    width: 20.0,
                                    decoration: new BoxDecoration(
                                      color: colorfour ,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("DDD", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  SizedBox(width: 25,),
                                  Expanded(
                                    child: Text(
                                      "kj",
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 4,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ),
                      Divider(
                        height: 3,
                        color: Colors.grey,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height *10/80,
                        margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width *5/80,
                          right: MediaQuery.of(context).size.width *5/80,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white
                        ),
                      ),
                      Divider(
                        height: 3,
                        color: Colors.grey,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height *10/80,
                        margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width *5/80,
                          right: MediaQuery.of(context).size.width *5/80,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white
                        ),
                      ),
                      Divider(
                        height: 3,
                        color: Colors.grey,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height *10/80,
                        margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width *5/80,
                          right: MediaQuery.of(context).size.width *5/80,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.yellow
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}