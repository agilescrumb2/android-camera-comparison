import 'package:flutter/material.dart';
import 'package:android_camera_comparison/secondary/detail_screen.dart';

class InformationPage extends StatelessWidget {
  final List<Map<String, dynamic>> information = [
    {
      'image': 'https://picsum.photos/200/300',
      'name': 'Product 1',
      'description': 'This is the description for Product 1',
      'price': 'Rp. 100',
      'imageAsset': 'assets/img/luar.jpg',
    },
    {
      'image': 'https://picsum.photos/200/300',
      'name': 'Product 2',
      'description': 'This is the description for Product 2',
      'price': 'Rp. 200',
      'imageAsset': 'assets/img/luar.jpg',
    },
    {
      'image': 'https://picsum.photos/200/300',
      'name': 'Product 3',
      'description': 'This is the description for Product 3',
      'price': 'Rp. 200',
      'imageAsset': 'assets/img/luar.jpg',
    },
    {
      'image': 'https://picsum.photos/200/300',
      'name': 'Product 4',
      'description': 'This is the description for Product 4',
      'price': 'Rp. 200',
      'imageAsset': 'assets/img/luar.jpg',
    },
    {
      'image': 'https://picsum.photos/200/300',
      'name': 'Product 5',
      'description': 'This is the description for Product 5',
      'price': 'Rp. 200',
      'imageAsset': 'assets/img/luar.jpg',
    },
    {
      'image': 'https://picsum.photos/200/300',
      'name': 'Product 6',
      'description': 'This is the description for Product 6',
      'price': 'Rp. 200',
      'imageAsset': 'assets/img/luar.jpg',
    },
    {
      'image': 'https://picsum.photos/200/300',
      'name': 'Product 7',
      'description': 'This is the description for Product 7',
      'price': 'Rp. 200',
      'imageAsset': 'assets/img/luar.jpg',
    },
    {
      'image': 'https://picsum.photos/200/300',
      'name': 'Product 8',
      'description': 'This is the description for Product 8',
      'price': 'Rp. 200',
      'imageAsset': 'assets/img/luar.jpg',
    },
    {
      'image': 'https://picsum.photos/200/300',
      'name': 'Product 9',
      'description': 'This is the description for Product 9',
      'price': 'Rp. 200',
      'imageAsset': 'assets/img/luar.jpg',
    },
    {
      'image': 'https://picsum.photos/200/300',
      'name': 'Product 10',
      'description': 'This is the description for Product 10',
      'price': 'Rp. 200',
      'imageAsset': 'assets/img/luar.jpg',
    },
    {
      'image': 'https://picsum.photos/200/300',
      'name': 'Product 11',
      'description': 'This is the description for Product 11',
      'price': 'Rp. 200',
      'imageAsset': 'assets/img/luar.jpg',
    },
    {
      'image': 'https://picsum.photos/200/300',
      'name': 'Product 12',
      'description': 'This is the description for Product 12',
      'price': 'Rp. 200',
      'imageAsset': 'assets/img/luar.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('You Can Browse Here'),
        backgroundColor: Colors.deepPurple,
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
                                topLeft: Radius.circular(15.0),
                                bottomLeft: Radius.circular(15.0)
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
