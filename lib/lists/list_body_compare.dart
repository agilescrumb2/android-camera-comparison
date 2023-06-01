import 'package:android_camera_comparison/comparisons/detail_compare.dart';
import 'package:android_camera_comparison/comparisons/detail_compare_kamera.dart';
import 'package:android_camera_comparison/details/detail_screen_body.dart';
import 'package:android_camera_comparison/services/remote_service_kamera.dart';
import 'package:flutter/material.dart';
import 'package:android_camera_comparison/primary/beranda.dart';
import '../models/kamera.dart';

class ListKameraCompare extends StatefulWidget {
  ListKameraCompare({Key? key}) : super(key: key);
  @override
  State<ListKameraCompare> createState() => _ListKameraCompareState();
}

class _ListKameraCompareState extends State<ListKameraCompare> {
  TextEditingController controller = new TextEditingController();
  List<Kamera> searchResult = [];
  List<Kamera> kameras = [];
  List<Kamera> selectedProducts = [];
  int checkedCount = 0;
  int maxChecked = 2;
  var isLoaded = false;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    kameras = await RemoteServiceKamera().getKameras();
    if(kameras != null) {
      setState(() {
        isLoaded = true;
      });
    }
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
                  if (kameras == null) return null;
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
                            builder: (context) => DetailScreenBody(product: kamera),
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
                          Checkbox(
                            value: kamera.wish,
                            onChanged: (newValue) {
                              int checkedCount = selectedProducts.length;
                              if (newValue == true) {
                                if (checkedCount >= 2) {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        icon : Icon(Icons.dangerous_outlined, size: 100),
                                        iconColor: Colors.deepPurple,
                                        title: Text('Limit Reached'),
                                        content: Text("You can only select up to 2 items."),
                                        actions: [
                                          TextButton(
                                            child: Container(
                                              height: 50,
                                              width: 100,
                                              color: Colors.deepPurple,
                                              padding: EdgeInsets.only(top: 14),
                                              child: Text('OK', textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
                                            ),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                } else {
                                  setState(() {
                                    kamera.wish = newValue!;
                                    selectedProducts.add(kamera);
                                  });
                                }
                              } else {
                                setState(() {
                                  kamera.wish = newValue!;
                                  selectedProducts.remove(kamera);
                                });
                              }
                            },
                          )
                        ],
                      ),
                    ),
                  );
                },
              ) : new ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: kameras?.length ?? 0,
                itemBuilder: (BuildContext context, int index) {
                  if (kameras == null) return null;
                  final kamera = kameras?[index];
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
                            builder: (context) => DetailScreenBody(product: kamera),
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
                          Checkbox(
                            value: kamera.wish,
                            onChanged: (newValue) {
                              int checkedCount = selectedProducts.length;
                              if (newValue == true) {
                                if (checkedCount >= 2) {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        icon : Icon(Icons.dangerous_outlined, size: 100),
                                        iconColor: Colors.deepPurple,
                                        title: Text('Limit Reached'),
                                        content: Text("You can only select up to 2 items."),
                                        actions: [
                                          TextButton(
                                            child: Container(
                                              height: 50,
                                              width: 100,
                                              color: Colors.deepPurple,
                                              padding: EdgeInsets.only(top: 14),
                                              child: Text('OK', textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
                                            ),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                } else {
                                  setState(() {
                                    kamera.wish = newValue!;
                                    selectedProducts.add(kamera);
                                  });
                                }
                              } else {
                                setState(() {
                                  kamera.wish = newValue!;
                                  selectedProducts.remove(kamera);
                                });
                              }
                            },
                          )
                        ],
                      ),
                    ),
                  );
                },
              )
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomAppBar(
      //   child: Container(
      //     color: Colors.deepPurple,
      //     height: 70,
      //     child: GestureDetector(
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         children: [Text('COMPARE', style: TextStyle(color: Colors.white))],
      //       ),
      //       onTap: (){
      //         if (checkedCount < 2) {
      //           showDialog(
      //             context: context,
      //             builder: (BuildContext context) {
      //               return AlertDialog(
      //                 icon : Icon(Icons.dangerous_outlined, size: 100),
      //                 iconColor: Colors.deepPurple,
      //                 title: Text('Limit Not Reached'),
      //                 content: Text("You have to select 2 items."),
      //                 actions: [
      //                   TextButton(
      //                     child: Container(
      //                       height: 50,
      //                       width: 100,
      //                       color: Colors.deepPurple,
      //                       padding: EdgeInsets.only(top: 14),
      //                       child: Text('OK', textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
      //                     ),
      //                     onPressed: () {
      //                       Navigator.of(context).pop();
      //                     },
      //                   ),
      //                 ],
      //               );
      //             },
      //           );
      //         }
      //         else if (selectedProducts.length == 2){
      //           Navigator.push(
      //               context,
      //               MaterialPageRoute(builder: (context) =>
      //                   DetailCompareKamera(item1: selectedProducts[0],
      //                       item2: selectedProducts[1]))
      //           );
      //         }
      //       },
      //     )
      //   )
      // )
        bottomNavigationBar: GestureDetector(
          onTap: (){
                // if (checkedCount < 2) {
                //   showDialog(
                //     context: context,
                //     builder: (BuildContext context) {
                //       return AlertDialog(
                //         icon : Icon(Icons.dangerous_outlined, size: 100),
                //         iconColor: Colors.deepPurple,
                //         title: Text('Limit Not Reached'),
                //         content: Text("You have to select 2 items."),
                //         actions: [
                //           TextButton(
                //             child: Container(
                //               height: 50,
                //               width: 100,
                //               color: Colors.deepPurple,
                //               padding: EdgeInsets.only(top: 14),
                //               child: Text('OK', textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
                //             ),
                //             onPressed: () {
                //               Navigator.of(context).pop();
                //             },
                //           ),
                //         ],
                //       );
                //     },
                //   );
                // }
                if (selectedProducts.length == 2){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>
                          DetailCompareKamera(item1: selectedProducts[0],
                              item2: selectedProducts[1]))
                  );
                }
                else{
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        icon : Icon(Icons.dangerous_outlined, size: 100),
                        iconColor: Colors.deepPurple,
                        title: Text('Limit Not Reached'),
                        content: Text("You have to select 2 items."),
                        actions: [
                          TextButton(
                            child: Container(
                              height: 50,
                              width: 100,
                              color: Colors.deepPurple,
                              padding: EdgeInsets.only(top: 14),
                              child: Text('OK', textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                }
              },
          child: BottomAppBar(
            child: Container(
                color: Colors.deepPurple,
                height: 70,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('COMPARE', style: TextStyle(color: Colors.white)),
                    ],
                  ),
              ),
          ),
        )
    );
  }

  onSearchTextChanged(String text) async {
    searchResult.clear();
    if (text.isEmpty) {
      setState(() {});
      return;
    }

    kameras.forEach((element) {
      if (element.nama_kamera.toLowerCase().contains(text)) {
        searchResult.add(element);
      }
    });

    setState(() {});
  }
}
