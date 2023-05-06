import 'package:android_camera_comparison/primary/beranda.dart';
import 'package:flutter/material.dart';


class DetailScreenFullkit extends StatelessWidget {
  final dynamic product;

  const DetailScreenFullkit({Key? key, required this.product}) : super(key: key);

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

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: colortwo,
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
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(0),
            height: 350,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(40), bottomLeft: Radius.circular(40)),
                color: coloreight
            ),
            child: Column(
              children: [
                Image.asset(
                  product.image,
                  height: 270,
                ),
                SizedBox(height: 10),
                Text(
                  product.nama_kamera,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, color: Colors.white),
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(30),
            height: 1200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
                color: coloreight
            ),
            child: Column(
              children: [
                Column(
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
                                  color: colorsix ,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 5, right: 5)),
                              Text(
                                'Harga',
                                style: TextStyle(fontSize: 18, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          product.harga,
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: Row(
                        children: [
                          Padding(padding: EdgeInsets.all(15)),
                          Container(
                            height: 20.0,
                            width: 20.0,
                            decoration: new BoxDecoration(
                              color: colorsix ,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 5, right: 5)),
                          Text(
                            'Mode Af',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      product.mode_af,
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
                              color: colorone ,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 5, right: 5)),
                          Text(
                            'Fokus Manual',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      product.fokus_manual,
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
                              color: colortwo ,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 5, right: 5)),
                          Text(
                            'Built in Flash',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      product.builtin_flash,
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
                              color: colorsix ,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 5, right: 5)),
                          Text(
                            'Mode Flash',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      product.mode_flash,
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
                              color: colorthree ,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 5, right: 5)),
                          Text(
                            'Panjang Fokus',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      product.panjang_fokus,
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
                              color: colorfour ,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 5, right: 5)),
                          Text(
                            'Bidikan Perdetik',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      product.bidik_perdetik,
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
                              color: colorfive ,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 5, right: 5)),
                          Text(
                            'Zoom Digital',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      product.zoom_digi,
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
                              color: colorsix ,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 5, right: 5)),
                          Text(
                            'Resolusi Gambar',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      product.resolusi_gambar,
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
                              color: colorsix ,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 5, right: 5)),
                          Text(
                            'Stabilizer',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      product.stabilizer,
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
                              color: colorsix ,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 5, right: 5)),
                          Text(
                            'Ukuran Monitor LCD (inch)',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      product.ukuran_lcd,
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
                              color: colorsix ,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 5, right: 5)),
                          Text(
                            'Resolusi Monitor LCD (titik)',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      product.resolusi_lcd,
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
                              color: colorsix ,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 5, right: 5)),
                          Text(
                            'Ukuran Sensor',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      product.sensor,
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
                              color: colorsix ,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 5, right: 5)),
                          Text(
                            'White Balance',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      product.white_balance,
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
    );
  }
}