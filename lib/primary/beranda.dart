import 'package:flutter/material.dart';
import 'package:android_camera_comparison/secondary/informationpage.dart';
import 'package:android_camera_comparison/secondary/compare_item.dart';
import 'package:android_camera_comparison/secondary/detail_screen.dart';
import 'package:android_camera_comparison/secondary/kategori.dart';
import 'package:android_camera_comparison/primary/splash_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
              Icons.menu,
              size: 25,),
          onPressed: () {},
        ),
        // title: TextField(
        //   controller: searchController,
        //   decoration: InputDecoration(
        //     hintText: 'Search',
        //     border: InputBorder.none,
        //   ),
        // ),
        actions: [
          // IconButton(
          //     onPressed: (){},
          //     icon: Icon(Icons.search),
          // ),
          IconButton(
              padding: EdgeInsets.only(right: 20.0),
              icon: Image.asset('assets/img/white.png'),
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
          Image.asset(
            'assets/img/berandapolos.png',
            fit: BoxFit.cover,
            width: size.width,
            height: size.height,
          ),
          Container(
            width: size.width,
            height: size.height,
            child: Text(
              'Features',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                color: Colors.white,
              ),
            ),
            padding: EdgeInsets.only(top: 520.0, left: 35.0),
          ),
          Container(
            width: size.width,
            height: size.height,
            padding: EdgeInsets.only(top: kToolbarHeight),
            child: Column(
              children: [
                SizedBox(height: 60),
                Image.asset('assets/img/char1.png', height: 200, width: 200),
                SizedBox(height: 65),
                Expanded(
                  child: GridView.count(
                    padding: const EdgeInsets.all(25),
                    crossAxisCount: 2,
                    children: <Widget>[
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35.0),
                        ),
                        color: Colors.deepPurple,
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
                          borderRadius: BorderRadius.circular(35.0),
                        ),
                        color: Colors.deepPurpleAccent,
                        elevation: 20,
                        margin: const EdgeInsets.all(8),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => KategoriCompare()),
                            );
                          },
                          splashColor: Colors.deepPurpleAccent,
                          child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: const <Widget>[
                                Icon(
                                  Icons.compare_arrows,
                                  size: 70,
                                  color: Colors.black,
                                ),
                                Text('Compare',
                                    style: TextStyle(fontSize: 17.0)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35.0),
                        ),
                        color: Colors.blueAccent,
                        elevation: 20,
                        margin: const EdgeInsets.all(8),
                        child: InkWell(
                          onTap: () {},
                          splashColor: Colors.blueAccent,
                          child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: const <Widget>[
                                Icon(
                                  Icons.camera_roll,
                                  size: 70,
                                  color: Colors.black,
                                ),
                                Text('FullSet',
                                    style: TextStyle(fontSize: 17.0)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35.0),
                        ),
                        color: Colors.blue,
                        elevation: 20,
                        margin: const EdgeInsets.all(8),
                        child: InkWell(
                          onTap: () {},
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
                                Text('Lensa', style: TextStyle(fontSize: 17.0)),
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




// Widget build(BuildContext context) {
//   Size size = MediaQuery.of(context).size;
//   return Scaffold(
//     body: Container(
//       width: size.width,
//       height: size.height,
//       child: Image.asset(
//         'assets/img/berandapolos.png',
//         fit: BoxFit.cover,
//         width: size.width,
//         height: size.height,
//       ),
//     ),
//   );
// }