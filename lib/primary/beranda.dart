import 'package:android_camera_comparison/comparisons/detail_compare.dart';
import 'package:android_camera_comparison/lists/list_fullkit.dart';
import 'package:android_camera_comparison/lists/list_lensa.dart';
import 'package:flutter/material.dart';
import 'package:android_camera_comparison/lists/list_body.dart';
import 'package:android_camera_comparison/comparisons/compare_item.dart';
import 'package:android_camera_comparison/details/detail_screen_fullkit.dart';
import 'package:android_camera_comparison/primary/kategori.dart';
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
        // leading: IconButton(
        //   icon: Icon(
        //       Icons.menu,
        //       size: 25,),
        //   onPressed: () {},
        // ),
        actions: [
          IconButton(
              padding: EdgeInsets.only(right: 20.0),
              icon: Image.asset('assets/img/white.png'),
              onPressed: (){
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomePage()),
                );
              },
          ),
        ],
      ),
      body: Stack(
        children: [
          // Opacity(
          //   opacity: 0.3,
          //   child: Container(
          //     decoration: BoxDecoration(
          //       image: DecorationImage(
          //         image: AssetImage('assets/img/splash.png'),
          //         fit: BoxFit.cover,
          //       ),
          //     ),
          //   ),
          // ),
          // Image.asset(
          //   'assets/img/berandapolos.png',
          //   fit: BoxFit.cover,
          //   width: size.width,
          //   height: size.height,
          // ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img/beranda_atas.png'),
                fit: BoxFit.cover
              ),
            ),
            width: double.infinity,
            height: double.infinity,
            // child: Text(
            //   'Our Features',
            //   style: TextStyle(
            //     fontWeight: FontWeight.bold,
            //     fontSize: 28.0,
            //     color: Colors.white,
            //   ),
            // ),
            // padding: EdgeInsets.only(top: 370.0, left: 155.0),
          ),
          Positioned.fill(
            top: MediaQuery.of(context).size.height / 3,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              child: Container(

                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16.0, top: 8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Choose Your \nFeature',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    ExpandedCard1(),
                    ExpandedCard2(),
                    ExpandedCard3(),
                    ExpandedCard4(),
                  ],
                ),
              ),
            ),
          ),
          // Container(
          //   width: size.width,
          //   height: size.height,
          //   padding: EdgeInsets.only(top: kToolbarHeight),
          //   child: Column(
          //     children: [
          //       SizedBox(height: 60),
          //       Image.asset('assets/img/char2.png', height: 200, width: 200),
          //       SizedBox(height: 65),
          //       Expanded(
          //         child: GridView.count(
          //           padding: const EdgeInsets.all(25),
          //           crossAxisCount: 2,
          //           children: <Widget>[
          //             Card(
          //               shape: RoundedRectangleBorder(
          //                 borderRadius: BorderRadius.circular(35.0),
          //               ),
          //               color: Colors.deepPurple,
          //               elevation: 20,
          //               margin: const EdgeInsets.all(8),
          //               child: InkWell(
          //                 onTap: () {
          //                   Navigator.push(
          //                     context,
          //                     MaterialPageRoute(
          //                         builder: (context) => ListKamera()),
          //                   );
          //                 },
          //                 splashColor: Colors.blueAccent,
          //                 child: Center(
          //                   child: Column(
          //                     mainAxisSize: MainAxisSize.min,
          //                     children: <Widget>[
          //                       Image.asset('assets/img/1.png', width: 100, height: 100),
          //                       Text('Body Only',
          //                           style: TextStyle(fontSize: 17.0)),
          //                     ],
          //                   ),
          //                 ),
          //               ),
          //             ),
          //             Card(
          //               shape: RoundedRectangleBorder(
          //                 borderRadius: BorderRadius.circular(35.0),
          //               ),
          //               color: Colors.blue,
          //               elevation: 20,
          //               margin: const EdgeInsets.all(8),
          //               child: InkWell(
          //                 onTap: () {
          //                   Navigator.push(
          //                     context,
          //                     MaterialPageRoute(
          //                         builder: (context) => ListLensa()),
          //                   );
          //                 },
          //                 splashColor: Colors.blueAccent,
          //                 child: Center(
          //                   child: Column(
          //                     mainAxisSize: MainAxisSize.min,
          //                     children: <Widget>[
          //                       Image.asset('assets/img/2.png', width: 100, height: 100),
          //                       Text('Lensa',
          //                           style: TextStyle(fontSize: 17.0)),
          //                     ],
          //                   ),
          //                 ),
          //               ),
          //             ),
          //             Card(
          //               shape: RoundedRectangleBorder(
          //                 borderRadius: BorderRadius.circular(35.0),
          //               ),
          //               color: Colors.blueAccent,
          //               elevation: 20,
          //               margin: const EdgeInsets.all(8),
          //               child: InkWell(
          //                 onTap: () {
          //                   Navigator.push(
          //                     context,
          //                     MaterialPageRoute(
          //                         builder: (context) => ListFullkit()),
          //                   );
          //                 },
          //                 splashColor: Colors.blueAccent,
          //                 child: Center(
          //                   child: Column(
          //                     mainAxisSize: MainAxisSize.min,
          //                     children: <Widget>[
          //                       Image.asset('assets/img/3.png', width: 100, height: 100),
          //                       Text('Full-Set',
          //                           style: TextStyle(fontSize: 17.0)),
          //                     ],
          //                   ),
          //                 ),
          //               ),
          //             ),
          //             Card(
          //               shape: RoundedRectangleBorder(
          //                 borderRadius: BorderRadius.circular(35.0),
          //               ),
          //               color: Colors.deepPurpleAccent,
          //               elevation: 20,
          //               margin: const EdgeInsets.all(8),
          //               child: InkWell(
          //                 onTap: () {
          //                   Navigator.push(
          //                     context,
          //                     MaterialPageRoute(
          //                         builder: (context) => KategoriCompare()),
          //                   );
          //                 },
          //                 splashColor: Colors.deepPurpleAccent,
          //                 child: Center(
          //                   child: Column(
          //                     mainAxisSize: MainAxisSize.min,
          //                     children: <Widget>[
          //                       Image.asset('assets/img/4.png', width: 100, height: 100),
          //                       Text('Compare',
          //                           style: TextStyle(fontSize: 17.0)),
          //                     ],
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}

class ExpandedCard1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: Colors.white70,
        margin: EdgeInsets.all(10),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ListKamera()),
            );
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 120,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset('assets/img/icon_body.png', width: 80, height: 80),
                    ],
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
                        "Body Only",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.deepPurpleAccent,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Bagian utama pada sebuah \nkamera",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class ExpandedCard2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: Colors.white70,
        margin: EdgeInsets.all(10),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ListLensa()),
            );
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 120,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset('assets/img/icon_lens.png', width: 80, height: 80),
                    ],
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
                        "Lensa",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.deepPurpleAccent,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Alat pendukung pemfokusan \ndalam pemotretan",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class ExpandedCard3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: Colors.white70,
        margin: EdgeInsets.all(10),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ListFullkit()),
            );
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 120,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset('assets/img/icon_fullkit.png', width: 80, height: 80),
                    ],
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
                        "Fullkit",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.deepPurpleAccent,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Gabungan antara body dan lensa? Ini tempatnya",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class ExpandedCard4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: Colors.white70,
        margin: EdgeInsets.all(10),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => KategoriCompare()),
            );
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 120,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset('assets/img/icon_compare.png', width: 80, height: 80),
                    ],
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
                        "Compare",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.deepPurpleAccent,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Bandingkan barang yang kalian inginkan di sini!",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
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