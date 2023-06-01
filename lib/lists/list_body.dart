import 'package:android_camera_comparison/models/kamera.dart';
import 'package:android_camera_comparison/details/detail_screen_body.dart';
import 'package:android_camera_comparison/services/remote_service_kamera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:async';
import 'dart:convert';
import 'package:android_camera_comparison/primary/beranda.dart';

class ListKamera extends StatefulWidget {
  ListKamera({Key? key}) : super(key: key);
  @override
  _ListKameraState createState() => _ListKameraState();
}

class _ListKameraState extends State<ListKamera> {
  TextEditingController controller = new TextEditingController();
  List<Kamera> searchResult = [];
  List<Kamera> fullkameras = [];
  final String url = 'https://cameris.my.id/api/camera';
  var isLoaded = false;

  getData() async {
    fullkameras = await RemoteServiceKamera().getKameras();
    if(fullkameras != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

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
                          controller: controller,
                          decoration: InputDecoration(
                            hintText: 'Cari Barang Yang Ingin Dilihat',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(horizontal: 16),
                          ),
                          onChanged: onSearchTextChanged,
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
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: searchResult.length != 0 || controller.text.isNotEmpty ? ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: searchResult?.length ?? 0,
                itemBuilder: (BuildContext context, int index) {
                  if (fullkameras == null) return null;
                  final kamera = searchResult?[index];
                  if (kamera == null) return null;
                  return Card(
                    color: Colors.white38,
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
                                DetailScreenBody(product: kamera),
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
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15.0),
                                  bottomLeft: Radius.circular(15.0)
                              ),
                              image: DecorationImage(
                                image: NetworkImage(
                                  kamera.gambar,
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
                                    kamera.nama_kamera,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  SizedBox(height: 8),
                                  Text(
                                    'Rp. ${kamera.harga}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 21,
                                      color: Colors.deepPurple,
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
              ) : new ListView.builder(
                  itemCount: fullkameras?.length,
                  itemBuilder: (context, index) {
                    if (fullkameras == null) return null;
                    final kamera = fullkameras?[index];
                    if (kamera == null) return null;
                    return new Card (
                      color: Colors.white38,
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
                                  DetailScreenBody(product: kamera),
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
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15.0),
                                    bottomLeft: Radius.circular(15.0)
                                ),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    kamera.gambar,
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
                                      kamera.nama_kamera,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    SizedBox(height: 8),
                                    Text(
                                      'Rp. ${kamera.harga}',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 21,
                                        color: Colors.deepPurple,
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

  onSearchTextChanged(String text) async {
    searchResult.clear();
    if (text.isEmpty) {
      setState(() {});
      return;
    }

    fullkameras.forEach((element) {
      if (element.nama_kamera.toLowerCase().contains(text)) {
        searchResult.add(element);
      }
    });

    setState(() {});
  }
}
