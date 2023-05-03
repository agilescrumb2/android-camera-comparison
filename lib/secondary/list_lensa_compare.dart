import 'package:android_camera_comparison/secondary/detail_screen_lens.dart';
import 'package:flutter/material.dart';
import 'package:android_camera_comparison/primary/beranda.dart';
import 'package:android_camera_comparison/secondary/detail_screen_fullkit.dart';
import 'package:android_camera_comparison/primary/splash_screen.dart';

class ListLensaCompare extends StatelessWidget {
  final List<Map<String, dynamic>> information = [
    {
      'name': 'EF-M55-200mm f/4.5-6.3 IS STM',
      'bobot': '260',
      'diameter': '60,9 x 865',
      'apeture': '32',
      'filter': '52',
      'fokus': '1,0/3,28',
      'zoom': '0,21',
      'diafragma': '7',
      'harga': 'IDR 7,825,500.00',
      'image': 'assets/img/lensa1.png'
    },
    {
      'name': 'EF50mm f/1.4 USM',
      'bobot': '290',
      'diameter': '73.8 x 50.5',
      'apeture': '22',
      'filter': '58',
      'fokus': '0.45/1.5',
      'zoom': '0.15',
      'diafragma': '8',
      'harga': 'IDR 8,380,500.00',
      'image': 'assets/img/lensa2.png'
    },
    {
      'name': 'RF85mm f/2 Macro IS STM',
      'bobot': '500',
      'diameter': '78 x 90,5',
      'apeture': '29',
      'filter': '67',
      'fokus': '0,35 / 1,14',
      'zoom': '0,5',
      'diafragma': '9',
      'harga': 'IDR 12,853,800.00',
      'image': 'assets/img/lensa3.png'
    },
    {
      'name': 'EF-M18-150mm f/3.5-6.3 IS STM (Graphite)',
      'bobot': '300',
      'diameter': '-',
      'apeture': '-',
      'filter': '55',
      'fokus': '0.25/0.82',
      'zoom': '0.31',
      'diafragma': '7',
      'harga': 'IDR 10,389,600.00',
      'image': 'assets/img/lensa4.png'
    },
    {
      'name': 'EF-M11-22mm f/4-5.6 IS STM',
      'bobot': '290',
      'diameter': '73.8 x 50.5',
      'apeture': '22',
      'filter': '58',
      'fokus': '0.45/1.5',
      'zoom': '0.15',
      'diafragma': '8',
      'harga': 'IDR 8,713,500.00',
      'image': 'assets/img/lensa5.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lens List'),
        backgroundColor: Colors.deepPurple,
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
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 7.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: SizedBox(
                width: 400,
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Cari Barang Yang Ingin Dilihat',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 16),
                        ),
                        // onChanged: (value) {
                        //   setState(() {
                        //     query = value;
                        //   });
                        // },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 4.5),
                      child: CircleAvatar(
                        backgroundColor: Colors.deepPurple,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.search, color: Colors.white)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.deepPurpleAccent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: information.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    margin: const EdgeInsets.all(6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 2,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                DetailScreenLens(product: information[index]),
                          ),
                        );
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 140,
                            height: 120,
                            decoration: BoxDecoration(
                              // gradient: LinearGradient(
                              //   begin: Alignment.topLeft,
                              //   end: Alignment.bottomRight,
                              //   colors: [Colors.blue, Colors.green],
                              // ),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15.0),
                                  bottomLeft: Radius.circular(15.0)
                              ),
                              image: DecorationImage(
                                image: AssetImage(
                                  information[index]['image'],
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    information[index]['name'],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  SizedBox(height: 8),
                                  Text(
                                    information[index]['harga'],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 21,
                                      color: Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
