import 'package:android_camera_comparison/primary/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:android_camera_comparison/secondary/informationpage.dart';
import 'package:android_camera_comparison/secondary/detail_screen.dart';
import 'package:android_camera_comparison/secondary/compare_item.dart';

class KategoriCompare extends StatefulWidget {
  const KategoriCompare({Key? key}) : super(key: key);

  @override
  _KategoriCompareState createState() => _KategoriCompareState();
}

class _KategoriCompareState extends State<KategoriCompare> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
            size: 25,),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
            padding: EdgeInsets.only(right: 20.0),
            icon: Image.asset('assets/img/kamera4.png'),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SplashScreen()),
              );
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            child: Text(
              'Anda dapat melakukan perbandingan dengan memilih salah satu dari kategori di bawah ini.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
            padding: EdgeInsets.only(top: 350.0),
          ),
          Container(
            width: size.width,
            height: size.height,
            padding: EdgeInsets.only(top: kToolbarHeight),
            child: Column(
              children: [
                SizedBox(height: 60),
                Image.asset('assets/img/char1.png', height: 200, width: 200),
                SizedBox(height: 250),
                Expanded(
                  child: GridView.count(
                    padding: const EdgeInsets.all(25),
                    crossAxisCount: 2,
                    children: <Widget>[
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0),
                          ),
                        ),
                        color: Colors.deepPurpleAccent,
                        elevation: 20,
                        margin: const EdgeInsets.all(8),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => InformationPage()),
                            );
                          },
                          splashColor: Colors.blueAccent,
                          child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: const <Widget>[
                                Icon(
                                  Icons.camera_alt,
                                  size: 70,
                                  color: Colors.black,
                                ),
                                Text('Body Only',
                                    style: TextStyle(fontSize: 17.0)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40.0),
                            bottomRight: Radius.circular(40.0),
                          ),
                        ),
                        color: Colors.blueAccent,
                        elevation: 20,
                        margin: const EdgeInsets.all(8),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CompareItem()),
                            );
                          },
                          splashColor: Colors.blueAccent,
                          child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: const <Widget>[
                                Icon(
                                  Icons.camera,
                                  size: 70,
                                  color: Colors.black,
                                ),
                                Text('Lensa',
                                    style: TextStyle(fontSize: 17.0)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}