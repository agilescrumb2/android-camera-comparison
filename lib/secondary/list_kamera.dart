import 'package:flutter/material.dart';
import 'package:android_camera_comparison/primary/beranda.dart';
import 'package:android_camera_comparison/secondary/detail_screen.dart';
import 'package:android_camera_comparison/primary/splash_screen.dart';

class ListKamera extends StatelessWidget {
  final List<Map<String, dynamic>> information = [
    {
      'image': 'assets/img/eos200d.png',
      'name': 'IXUS 285 HS',
      'description': 'This is the description for Product 1',
      'price': 'IDR 2,410,000',
      'imageAsset': 'assets/img/luar.jpg',
    },
    {
      'image': 'assets/img/eos3000d.png',
      'name': 'PowerShot G7 X Mark II',
      'description': 'This is the description for Product 2',
      'price': 'IDR 3,475,000',
      'imageAsset': 'assets/img/luar.jpg',
    },
    {
      'image': 'assets/img/eos5d.png',
      'name': 'PowerShot SX70 HS',
      'description': 'This is the description for Product 3',
      'price': 'IDR 5,119,800',
      'imageAsset': 'assets/img/luar.jpg',
    },
    {
      'image': 'assets/img/eos6d.png',
      'name': 'PowerShot SX740 HS',
      'description': 'This is the description for Product 4',
      'price': 'IDR 4,297,000',
      'imageAsset': 'assets/img/luar.jpg',
    },
    {
      'image': 'assets/img/eos1500d.png',
      'name': 'EOS R7 (RF-S18-150mm f/3.5-6.3 IS STM)',
      'description': 'This is the description for Product 5',
      'price': 'IDR 3,769,000',
      'imageAsset': 'assets/img/luar.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Camera List'),
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
