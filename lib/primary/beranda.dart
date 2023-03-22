import 'package:flutter/material.dart';
import 'package:android_camera_comparison/informationpage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              size: 30,),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
              icon: Image.asset('assets/img/white.png'),
              onPressed: (){},
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
            padding: const EdgeInsets.only(top: kToolbarHeight),
            child: Column(
              children: [
                SizedBox(height: 60),
                Image.asset('assets/img/berandakamera.png'),
                SizedBox(height: 135),
                Expanded(
                  child: GridView.count(
                    padding: const EdgeInsets.all(25),
                    crossAxisCount: 2,
                    children: <Widget>[
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            bottomRight: Radius.circular(30.0),
                          ),
                        ),
                        color: Colors.purpleAccent,
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
                            topRight: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0),
                          ),
                        ),
                        color: Colors.yellowAccent,
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
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0),
                          ),
                        ),
                        color: Colors.purple,
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
                                Text('FullSet',
                                    style: TextStyle(fontSize: 17.0)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            bottomRight: Radius.circular(30.0),
                          ),
                        ),
                        color: Colors.deepPurpleAccent,
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
                                  Icons.camera_enhance_outlined,
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