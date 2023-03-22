import 'package:flutter/material.dart';
import 'package:android_camera_comparison/detail_screen.dart';

class InformationPage extends StatelessWidget {
  final List<Map<String, dynamic>> information = [
    {
      'image': 'https://picsum.photos/200/300',
      'name': 'Product 1',
      'description': 'This is the description for Product 1',
      'price': '\$100',
      'imageAsset': 'assets/img/luar.jpg'
    },
    {
      'image': 'https://picsum.photos/200/300',
      'name': 'Product 2',
      'description': 'This is the description for Product 2',
      'price': '\$200',
      'imageAsset': 'assets/img/luar.jpg'
    },
    {
      'image': 'https://picsum.photos/200/300',
      'name': 'Product 2',
      'description': 'This is the description for Product 2',
      'price': '\$200',
      'imageAsset': 'assets/img/luar.jpg'
    },
    {
      'image': 'https://picsum.photos/200/300',
      'name': 'Product 2',
      'description': 'This is the description for Product 2',
      'price': '\$200',
      'imageAsset': 'assets/img/luar.jpg'
    },
    {
      'image': 'https://picsum.photos/200/300',
      'name': 'Product 2',
      'description': 'This is the description for Product 2',
      'price': '\$200',
      'imageAsset': 'assets/img/luar.jpg'
    },
    {
      'image': 'https://picsum.photos/200/300',
      'name': 'Product 2',
      'description': 'This is the description for Product 2',
      'price': '\$200',
      'imageAsset': 'assets/img/luar.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Information'),
        backgroundColor: Colors.deepPurple,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: Container(
            color: Colors.deepPurple, // Warna latar belakang
            child: Center(
              child: Text(
                'search?',
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.grey[200], // Ubah warna latar belakang menjadi abu-abu
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: information.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    margin: const EdgeInsets.all(8),
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
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                              ),
                              image: DecorationImage(
                                image: NetworkImage(
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
                                      fontSize: 18,
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
                                      fontSize: 18,
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
