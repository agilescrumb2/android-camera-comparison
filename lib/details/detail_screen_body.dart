import 'package:android_camera_comparison/primary/beranda.dart';
import 'package:flutter/material.dart';
import 'package:android_camera_comparison/models/kamera.dart';
import 'package:android_camera_comparison/services/remote_service_kamera.dart';

class DetailScreenBody extends StatelessWidget {
  final Kamera product;
  DetailScreenBody({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color colorone = Color.fromRGBO(140, 138, 255, 1);
    const Color colortwo = Color.fromRGBO(114, 91, 238, 1);
    const Color colorthree = Color.fromRGBO(182, 181, 244, 1);
    const Color colorfour = Color(0xff7158D2);
    const Color colorfive = Color(0xff947FEA);
    const Color colorsix = Color(0xff3A5CD6);
    // const Color colorseven = Color(0xff6786F5);
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
                  Navigator.pop(context);
                  Navigator.pop(context);
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
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3), // changes the position of the shadow
                            ),
                          ],
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
                                child: Image.network(
                                  product.gambar,
                                  fit: BoxFit.fitHeight, // Ensu

                                  // re the image maintains its aspect ratio
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Expanded(
                              child: Text(
                                product.nama_kamera,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
                              ),
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
                                    Text("Harga", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
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
                                        product.harga,
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
                                    Text("Mode AF", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
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
                                        product.mode_af,
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
                                    Text("Built-in Flash", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
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
                                        product.built_in_flash,
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
                                    Text("Kecepatan Pemotretan (detik)", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
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
                                        product.kecepatan_pemotretan,
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
                                    Text("Dimensi (mm)", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
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
                                        product.dimensi,
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
                                    Text("ISO", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
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
                                        product.iso_efektif,
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
                                    Text("Exposure Compensation", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
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
                                        product.exposure_compensation,
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
                                    Text("Mode Flash", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
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
                                        product.mode_flash,
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
                                    Text("Resolusi Gambar", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
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
                                        product.resolusi_gambar,
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
                                    Text("Stabilizer", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
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
                                        product.image_stabilizer,
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
                                    Text("Ukuran Monitor LCD (inch)", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
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
                                        product.monitor_lcd_ukuran,
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
                                    Text("Resolusi Monitor LCD (inch)", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
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
                                        product.monitor_lcd_resolusi,
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
                                    Text("Fokus Manual", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
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
                                        product.fokus_manual,
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
                                    Text("Mode Pemotretan", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
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
                                        product.mode_pemotretan,
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
                                    Text("Ukuran Sensor", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
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
                                        product.ukuran_sensor,
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
                                    Text("Rentang Kecepatan Rana", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
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
                                        product.rentang_kecepatan_rana,
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
                                    Text("Bobot (g)", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
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
                                        product.bobot,
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
                                    Text("White Balance", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
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
                                        product.white_balance,
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