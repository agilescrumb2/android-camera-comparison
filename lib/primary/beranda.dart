import 'package:android_camera_comparison/secondary/detail_compare.dart';
import 'package:android_camera_comparison/secondary/list_fullkit.dart';
import 'package:android_camera_comparison/secondary/list_lensa.dart';
import 'package:flutter/material.dart';
import 'package:android_camera_comparison/secondary/list_body.dart';
import 'package:android_camera_comparison/secondary/compare_item.dart';
import 'package:android_camera_comparison/secondary/detail_screen_fullkit.dart';
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
      backgroundColor: Color.fromRGBO(114, 91, 238, 1),
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
                Navigator.pop(
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
          Opacity(
            opacity: 0.3,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/homecamera.png'),
                  fit: BoxFit.none,
                ),
              ),
            ),
          ),
          // Image.asset(
          //   'assets/img/berandapolos.png',
          //   fit: BoxFit.cover,
          //   width: size.width,
          //   height: size.height,
          // ),
          Container(
            width: size.width,
            height: size.height,
            child: Text(
              'Our Features',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                color: Colors.white,
              ),
            ),
            padding: EdgeInsets.only(top: 370.0, left: 155.0),
          ),
          Container(
            width: size.width,
            height: size.height,
            padding: EdgeInsets.only(top: kToolbarHeight),
            child: Column(
              children: [
                SizedBox(height: 60),
                Image.asset('assets/img/char2.png', height: 200, width: 200),
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
                                  builder: (context) => ListKamera()),
                            );
                          },
                          splashColor: Colors.blueAccent,
                          child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Image.asset('assets/img/1.png', width: 100, height: 100),
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
                        color: Colors.blue,
                        elevation: 20,
                        margin: const EdgeInsets.all(8),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ListLensa()),
                            );
                          },
                          splashColor: Colors.blueAccent,
                          child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Image.asset('assets/img/2.png', width: 100, height: 100),
                                Text('Lensa',
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
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ListFullkit()),
                            );
                          },
                          splashColor: Colors.blueAccent,
                          child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Image.asset('assets/img/3.png', width: 100, height: 100),
                                Text('Full-Set',
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
                              children: <Widget>[
                                Image.asset('assets/img/4.png', width: 100, height: 100),
                                Text('Compare',
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