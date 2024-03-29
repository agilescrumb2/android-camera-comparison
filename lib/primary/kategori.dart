import 'package:android_camera_comparison/primary/splash_screen.dart';
import 'package:android_camera_comparison/lists/list_body_compare.dart';
import 'package:android_camera_comparison/lists/list_lensa_compare.dart';
import 'package:flutter/material.dart';
import 'package:android_camera_comparison/lists/list_body.dart';
import 'package:android_camera_comparison/details/detail_screen_fullkit.dart';
import 'package:android_camera_comparison/comparisons/compare_item.dart';
import '../lists/list_fullkit_compare.dart';

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
            icon: Image.asset('assets/img/white.png'),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Opacity(
            opacity: 0.8,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/pagecc1.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            width: size.width,
            height: size.height,
            padding: EdgeInsets.only(top: kToolbarHeight),
            child: Column(
              children: [
                SizedBox(height: 60),
                Image.asset('assets/img/char1.png', height: 200, width:  200),
                SizedBox(height: 120),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40))
                        ),
                        color: Colors.indigoAccent,
                        elevation: 20,
                        margin: const EdgeInsets.all(8),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ListFullkitCompare()),
                              );
                            },
                            splashColor: Colors.blueAccent,
                            child: Center(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: const <Widget>[
                                  Icon(
                                    Icons.camera_enhance,
                                    size: 70,
                                    color: Colors.black,
                                  ),
                                  Text('Full Body',
                                      style: TextStyle(fontSize: 17.0)),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child :Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(40))
                              ),
                              color: Colors.indigoAccent,
                              elevation: 20,
                              margin: const EdgeInsets.all(8),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ListKameraCompare()),
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
                            ),

                          ),
                          Expanded(
                            flex: 1,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(40))
                              ),
                              color: Colors.indigoAccent,
                              elevation: 20,
                              margin: const EdgeInsets.all(8),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ListLensaCompare()),
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
                            ),
                          ),
                        ],
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