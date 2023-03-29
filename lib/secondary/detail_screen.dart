import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final dynamic product;

  DetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color colorone = Color.fromRGBO(140, 138, 255, 1);
    Color colortwo = Color.fromRGBO(114, 91, 238, 1);
    Color colorthree = Color.fromRGBO(182, 181, 244, 1);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: SafeArea(
            child: Container(
              padding: EdgeInsets.only(bottom: 20, left: 20, right: 20),
              child: AppBar(
                centerTitle: true,
                title: Text("Detail"),
                actions: [
                  Icon(Icons.camera_enhance_outlined),
                  Padding(padding: EdgeInsets.only(right: 20))
                ],
                backgroundColor: colorone,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    )
                ),
              ),
            ),
          ),
        ),
        backgroundColor: colortwo,
        body: Container(
          padding: EdgeInsets.zero,
          child: Stack(
            children: [
              Align(
                alignment: Alignment(0.0, 2),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Container(
                    width: 390,
                    height: 830,
                    color: colorthree,
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Padding(padding: EdgeInsets.all(15)),
                              Container(
                                height: 20.0,
                                width: 20.0,
                                decoration: new BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Padding(padding: EdgeInsets.all(5)),
                              Text(
                                'Spesifikasi',
                                style: TextStyle(fontSize: 18, color: Colors.white),

                              ),
                            ],
                          ),
                        ),
                        Text(
                          product['description'],
                          style: TextStyle(fontSize: 18, color: Colors.white, height: 3,decoration: TextDecoration.underline),
                          textAlign: TextAlign.start,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Padding(padding: EdgeInsets.all(15)),
                              Container(
                                height: 20.0,
                                width: 20.0,
                                decoration: new BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Padding(padding: EdgeInsets.all(5)),
                              Text(
                                'Spesifikasi',
                                style: TextStyle(fontSize: 18, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          product['description'],
                          style: TextStyle(fontSize: 18, color: Colors.white, height: 3,decoration: TextDecoration.underline),
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(height: 10),
                        Container(
                          child: Row(
                            children: [
                              Padding(padding: EdgeInsets.all(15)),
                              Container(
                                height: 20.0,
                                width: 20.0,
                                decoration: new BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Padding(padding: EdgeInsets.all(5)),
                              Text(
                                'Spesifikasi',
                                style: TextStyle(fontSize: 18, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          product['description'],
                          style: TextStyle(fontSize: 18, color: Colors.white, height: 3,decoration: TextDecoration.underline),
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(height: 280),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0.0, -0.7),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: Image.asset(
                          product['image'],
                          height: 200,
                          width: 200,
                        ),
                      ),
                    ),
                    SizedBox(
                      child: Text(
                          product['name'],
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),

              ),
            ],
          ),
        )
    );
  }
}
//   body: Center(
//       child: Stack(
//         children: [
//           Positioned(
//             top: 0.0,
//             child: Card(
//               child: Container(
//                 height: 100.0,
//                 width: double.infinity,
//                 child: Text('Card 1'),
//                 color: Colors.white,
//               ),
//             ),
//           ),
//           Positioned(
//             top: 50.0,
//             child: Card(
//               child: Container(
//                 height: 100.0,
//                 width: double.infinity,
//                 child: Text('Card 2'),
//               ),
//             ),
//           ),
//           Positioned(
//             top: 100.0,
//             child: Card(
//               child: Container(
//                 height: 100.0,
//                 width: double.infinity,
//                 child: Text('Card 3'),
//               ),
//             ),
//           ),
//         ],
//       )
//   ),
// );



// return Scaffold(
//   appBar: AppBar(
//     title: Text('Detail Product'),
//     backgroundColor: Colors.deepPurple,
//   ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               width: 338,
//               height: 236,
//               child: Card(
//                 shape: const RoundedRectangleBorder(
//                     borderRadius: BorderRadius.all(Radius.circular(20))
//                 ),
//                 child: Column(
//
//                   children: [
//                     Image.asset(
//                       product['imageAsset'],
//                       height: 300,
//                       width: 200,
//                     ),
//                     Text(
//
//                       product['name'],
//                       style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),textAlign: TextAlign.right,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Container(
//               width: 338,
//               height: 309,
//               child: Card(
//                 shape: const RoundedRectangleBorder(
//                     borderRadius: BorderRadius.all(Radius.circular(20))
//                 ),
//                 child: Column(
//                   children: [
//
//                     SizedBox(height: 16),
//                     Text(
//                       product['description'],
//                       style: TextStyle(fontSize: 18),
//                       textAlign: TextAlign.start,
//                     ),
//                     SizedBox(height: 16),
//                     Text(
//                       product['price'],
//                       style: TextStyle(
//                         fontSize: 24,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.green,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }