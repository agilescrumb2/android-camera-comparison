import 'package:flutter/material.dart';
import 'package:android_camera_comparison/primary/beranda.dart';
import 'package:android_camera_comparison/secondary/detail_screen.dart';
import 'package:android_camera_comparison/primary/splash_screen.dart';

class ListFullkit extends StatelessWidget {
  final List<Map<String, dynamic>> information = [
    {
      'image': 'assets/img/ixus.png',
      'name': 'EOS 200D II (EF-S 18-55mm f/4-5.6 IS STM)',
      'description': 'This is the description for Product 1',
      'price': 'IDR 15,417,900.00',
      'imageAsset': 'assets/img/luar.jpg',
    },
    {
      'image': 'assets/img/powershot.png',
      'name': 'EOS 3000D Kit (EF S18-55 III)',
      'description': 'This is the description for Product 2',
      'price': 'IDR 6,482,400.00',
      'imageAsset': 'assets/img/luar.jpg',
    },
    {
      'image': 'assets/img/powershot2.png',
      'name': 'EOS 5D Mark IV Kit (EF 24 - 105 IS II USM)',
      'description': 'This is the description for Product 3',
      'price': 'IDR 72,638,400.00',
      'imageAsset': 'assets/img/luar.jpg',
    },
    {
      'image': 'assets/img/powershot3.png',
      'name': 'EOS 6D Mark II Kit (EF24-105mm f/4L IS II USM)',
      'description': 'This is the description for Product 4',
      'price': 'IDR 48,606,900.00',
      'imageAsset': 'assets/img/luar.jpg',
    },
    {
      'image': 'assets/img/eos.png',
      'name': 'EOS R7 (RF-S18-150mm f/3.5-6.3 IS STM)',
      'description': 'This is the description for Product 5',
      'price': 'IDR 9,601,500.00',
      'imageAsset': 'assets/img/luar.jpg',
    },
    // {
    //   'image': 'assets/img/eos2.png',
    //   'name': 'EOS 1500D Kit (EF S18-55 IS II)',
    //   'description': 'This is the description for Product 6',
    //   'price': 'IDR 2,987,000',
    //   'imageAsset': 'assets/img/luar.jpg',
    // },
    // {
    //   'image': 'assets/img/eos3.png',
    //   'name': 'EOS R7',
    //   'description': 'This is the description for Product 7',
    //   'price': 'IDR 1,899,00',
    //   'imageAsset': 'assets/img/luar.jpg',
    // },
    // {
    //   'image': 'assets/img/eos4.png',
    //   'name': 'EOS R50',
    //   'description': 'This is the description for Product 8',
    //   'price': 'IDR 4,633,000',
    //   'imageAsset': 'assets/img/luar.jpg',
    // },
    // {
    //   'image': 'assets/img/eos5.png',
    //   'name': 'EOS R8',
    //   'description': 'This is the description for Product 9',
    //   'price': 'IDR 2,955,000',
    //   'imageAsset': 'assets/img/luar.jpg',
    // },
    // {
    //   'image': 'assets/img/eos6.png',
    //   'name': 'EOS R6 Mark II ',
    //   'description': 'This is the description for Product 10',
    //   'price': 'IDR 3,270,000',
    //   'imageAsset': 'assets/img/luar.jpg',
    // },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('You Can Browse Here'),
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
                                DetailScreen(product: information[index]),
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
                                  Text(
                                    information[index]['description'],
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    information[index]['price'],
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
