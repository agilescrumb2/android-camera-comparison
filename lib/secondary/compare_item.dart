import 'package:flutter/material.dart';
import 'package:android_camera_comparison/secondary/list_kamera.dart';
import 'package:android_camera_comparison/secondary/detail_screen.dart';

class CompareItem extends StatefulWidget {
  const CompareItem({Key? key}) : super(key: key);

  @override
  _CompareItemState createState() => _CompareItemState();
}

class _CompareItemState extends State<CompareItem> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 25,),
              onPressed: () => Navigator.of(context).pop(),
          ),
          actions: [
            IconButton(
              padding: EdgeInsets.only(right: 20.0),
              icon: Image.asset('assets/img/white.png'),
              onPressed: (){},
            ),
          ],
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Container(
                    height: 400,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ListKamera()),
                        );
                      },
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.photo_camera, size: 70, color: Colors.black),
                            Text(
                              'Tambahkan Kamera',
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(height: 16),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Container(
                    height: 400,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ListKamera()),
                        );
                      },
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.photo_camera, size: 70, color: Colors.black),
                            Text(
                              'Tambahkan Kamera',
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(height: 16),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0),
          ),
          child: BottomAppBar(
            // height: 125.0,
            shape: CircularNotchedRectangle(),
            // notchMargin: 8.0,
            color: Colors.white,
            child: Container(
              height: 95.0,
            ),
          ),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.compare),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}