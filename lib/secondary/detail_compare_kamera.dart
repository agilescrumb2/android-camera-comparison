import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model/kamera_list.dart';

class DetailCompareKamera extends StatelessWidget{
  final Kamera item1;
  final Kamera item2;
  DetailCompareKamera({Key? key, required this.item1, required this.item2}) : super(key: key);

  @override
  Widget build(BuildContext context){
    const Color colortwo = Color.fromRGBO(114, 91, 238, 1);
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: colortwo,
            elevation: 0,
            title: Text('Compare'),
            centerTitle: true,
          ),
          body: Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(32.0),
                  decoration: BoxDecoration(
                      color: colortwo,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40)
                      )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(20.0),
                        child: Image.asset(item1.image, width: 100, height: 100),
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20.0),
                        child: Image.asset(item2.image, width: 100, height: 100),
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                    ],
                  ),
                ),
                // Container(
                //   padding: EdgeInsets.only(
                //     top: 30
                //   ),
                //   child: Column(
                //     children: [
                //       Row(
                //         mainAxisAlignment: MainAxisAlignment.start,
                //         children: [
                //           Text('data'),
                //           Text('data'),
                //         ],
                //       ),
                //       Container(
                //         child: Column(
                //           children: [
                //             Row(
                //               mainAxisAlignment: MainAxisAlignment.center,
                //               children: [
                //                 Text('data'),
                //                 Text('data'),
                //               ],
                //             )
                //           ],
                //         ),
                //       ),
                //       Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceAround,
                //         children: [
                //           Text('data'),
                //           Text('data'),
                //         ],
                //       ),
                //       Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceAround,
                //         children: [
                //           Text('data'),
                //           Text('data'),
                //         ],
                //       ),
                //       Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceAround,
                //         children: [
                //           Text('data'),
                //           Text('data'),
                //         ],
                //       ),
                //     ],
                //   ),
                // ),
                Container(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(right: 15),
                                      height: 20.0,
                                      width: 20.0,
                                      decoration: new BoxDecoration(
                                        color: colortwo ,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    Text(item1.name)
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Deskripsi')
                                  ],
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(right: 15),
                                      height: 20.0,
                                      width: 20.0,
                                      decoration: new BoxDecoration(
                                        color: colortwo ,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    Text(item2.name)
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Deskripsi')
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(right: 15),
                                      height: 20.0,
                                      width: 20.0,
                                      decoration: new BoxDecoration(
                                        color: colortwo ,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    Text('Judul')
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Deskripsi')
                                  ],
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(right: 15),
                                      height: 20.0,
                                      width: 20.0,
                                      decoration: new BoxDecoration(
                                        color: colortwo ,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    Text('Judul')
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Deskripsi')
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(right: 15),
                                      height: 20.0,
                                      width: 20.0,
                                      decoration: new BoxDecoration(
                                        color: colortwo ,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    Text('Judul')
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Deskripsi')
                                  ],
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(right: 15),
                                      height: 20.0,
                                      width: 20.0,
                                      decoration: new BoxDecoration(
                                        color: colortwo ,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    Text('Judul')
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Deskripsi')
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
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