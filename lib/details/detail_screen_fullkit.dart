import 'package:android_camera_comparison/primary/beranda.dart';
import 'package:flutter/material.dart';
import '../models/fullkit.dart';
import 'package:android_camera_comparison/services/remote_service_fullkit.dart';


class DetailScreenFullkit extends StatefulWidget {
  final dynamic product;

  DetailScreenFullkit({Key? key, required this.product}) : super(key: key);

  @override
  _DetailScreenFullkit createState() => _DetailScreenFullkit();
}

class _DetailScreenFullkit extends State<DetailScreenFullkit> {
  List<Fullkit>? fullkits;
  var isLoaded = false;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    fullkits = await RemoteServiceFullkit().getFullkits();
    if(fullkits != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

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
                                        "fullkit.harga",
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
                                        "fullkit.mode_af",
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
                                        "fullkit.fokus_manual",
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
                                        "fullkit.built_in_flash",
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
                                        "fullkit.mode_flash",
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
                                    Text("Panjang Fokus", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
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
                                        "fullkit.jarak_fokus_terdekat",
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
                                        "fullkit.kecepatan_pemotretan",
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
                                    Text("Zoom Digital", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
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
                                        "fullkit.zoom_digital",
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
                                        "fullkit.resolusi_gambar",
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
                                        "fullkit.image_stabilizer",
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
                                        "fullkit.monitor_lcd_ukuran",
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
                                    Text("Resolusi Monitor LCD (titik)", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
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
                                        "fullkit.monitor_lcd_resolusi",
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
                                        "fullkit.ukuran_sensor",
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
                                        "fullkit.white_balance",
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
                                        "fullkit.rentang_kecepatan_rana",
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