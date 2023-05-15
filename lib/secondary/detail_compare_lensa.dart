import 'package:android_camera_comparison/models/lensa.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/kamera.dart';

class DetailCompareLensa extends StatelessWidget{
  final Lensa item1;
  final Lensa item2;
  DetailCompareLensa({Key? key, required this.item1, required this.item2}) : super(key: key);

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
          body: SingleChildScrollView(
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
                Container(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        item1.name,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)
                                        ,),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        item2.name,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)
                                        ,),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ), //Judul
                      SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        item1.harga,
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600)
                                        ,),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        item2.harga,
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600)
                                        ,),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ), //Harga
                      SizedBox(height: 20,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                    Text(' Bobot', style: TextStyle(fontWeight: FontWeight.w600),)
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        child: Text(
                                          item1.bobot,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 4,))
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                    Text(' Bobot', style: TextStyle(fontWeight: FontWeight.w600),)
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        child: Text(
                                          item2.bobot,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 4,)
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ), //Bobot
                      SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                    Text(' Diameter', style: TextStyle(fontWeight: FontWeight.w600),)
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        child: Text(
                                          item1.diameter,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 4,))
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                    Text(' Diameter', style: TextStyle(fontWeight: FontWeight.w600),)
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        child: Text(
                                          item2.diameter,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 4,)
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ), //Diameter
                      SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                    Text(' Apeture', style: TextStyle(fontWeight: FontWeight.w600),)
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        child: Text(
                                          item1.apeture,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 4,))
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                    Text(' Apeture', style: TextStyle(fontWeight: FontWeight.w600),)
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        child: Text(
                                          item2.apeture,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 4,)
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ), //Apeture
                      SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                    Text(' Filter', style: TextStyle(fontWeight: FontWeight.w600),)
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        child: Text(
                                          item1.filter,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 4,))
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                    Text(' Filter', style: TextStyle(fontWeight: FontWeight.w600),)
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        child: Text(
                                          item2.filter,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 4,)
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ), //Filter
                      SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                    Text(' Fokus', style: TextStyle(fontWeight: FontWeight.w600),)
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        child: Text(
                                          item1.fokus,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 4,))
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                    Text(' Fokus', style: TextStyle(fontWeight: FontWeight.w600),)
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        child: Text(
                                          item2.fokus,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 4,)
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ), //Fokus
                      SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                    Text(' Zoom', style: TextStyle(fontWeight: FontWeight.w600),)
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        child: Text(
                                          item1.zoom,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 4,))
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                    Text(' Zoom', style: TextStyle(fontWeight: FontWeight.w600),)
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        child: Text(
                                          item2.zoom,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 4,)
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ), //Zoom
                      SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                    Text(' Diafragma', style: TextStyle(fontWeight: FontWeight.w600),)
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        child: Text(
                                          item1.diafragma,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 4,))
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                    Text(' Diafragma', style: TextStyle(fontWeight: FontWeight.w600),)
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        child: Text(
                                          item2.diafragma,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 4,)
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ), //Diafragma
                      SizedBox(height: 10,),
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