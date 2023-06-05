import 'package:android_camera_comparison/comparisons/detail_compare_lensa.dart';
import 'package:android_camera_comparison/details/detail_screen_lensa.dart';
import 'package:flutter/material.dart';
import 'package:android_camera_comparison/primary/beranda.dart';
import 'package:android_camera_comparison/services/remote_service_lensa.dart';
import 'package:android_camera_comparison/details/detail_screen_fullkit.dart';
import 'package:android_camera_comparison/primary/splash_screen.dart';
import 'package:android_camera_comparison/comparisons/detail_compare.dart';
import '../models/lensa.dart';

class ListLensaCompare extends StatefulWidget {
  @override
  State<ListLensaCompare> createState() => _ListLensaCompareState();
}

class _ListLensaCompareState extends State<ListLensaCompare> {
  TextEditingController controller = new TextEditingController();
  List<Lensa> searchResult = [];
  List<Lensa> selectedProducts = [];
  List<Lensa> lensas = [];
  var isLoaded = false;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    lensas = await RemoteServiceLensa().getLensas();
    if(lensas != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lens List'),
        backgroundColor: Colors.deepPurple,
        actions: [
          IconButton(
            padding: EdgeInsets.only(right: 20.0),
            icon: Image.asset('assets/img/white.png'),
            onPressed: (){
              Navigator.pop(context);
              Navigator.pop(context);
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
                itemBuilder: (context, index) {
                  if (lensas == null) return null;
                  final lensa = searchResult?[index];
                  if (lensa == null) return null;
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
                                DetailScreenLensa(product: lensa),
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
                              // gradient: LinearGradient(
                              //   begin: Alignment.topLeft,
                              //   end: Alignment.bottomRight,
                              //   colors: [Colors.blue, Colors.deepPurple],
                              // ),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15.0),
                                  bottomLeft: Radius.circular(15.0)
                              ),
                              image: DecorationImage(
                                image: AssetImage(
                                  lensa.gambar,
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
                                    lensa.nama_lensa,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  SizedBox(height: 8),
                                  Text(
                                    '${lensa.harga}',
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
                            value: lensa.wish,
                            onChanged: (newValue) {
                              if (newValue == true) {
                                if (selectedProducts.length == 2) {
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
                                }
                                else {
                                  setState(() {
                                    lensa.wish = newValue!;
                                    selectedProducts.add(lensa);
                                  });
                                }
                              } else {
                                setState(() {
                                  lensa.wish = newValue!;
                                  selectedProducts.remove(lensa);
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
                itemCount: lensas?.length ?? 0,
                itemBuilder: (context, index) {
                  if (lensas == null) return null;
                  final lensa = lensas?[index];
                  if (lensa == null) return null;
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
                                DetailScreenLensa(product: lensa),
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
                              // gradient: LinearGradient(
                              //   begin: Alignment.topLeft,
                              //   end: Alignment.bottomRight,
                              //   colors: [Colors.blue, Colors.deepPurple],
                              // ),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15.0),
                                  bottomLeft: Radius.circular(15.0)
                              ),
                              image: DecorationImage(
                                image: AssetImage(
                                  lensa.gambar,
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
                                    lensa.nama_lensa,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  SizedBox(height: 8),
                                  Text(
                                    'Rp. ${lensa.harga}',
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
                            value: lensa.wish,
                            onChanged: (newValue) {
                              if (newValue == true) {
                                if (selectedProducts.length == 2) {
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
                                }
                                else {
                                  setState(() {
                                    lensa.wish = newValue!;
                                    selectedProducts.add(lensa);
                                  });
                                }
                              } else {
                                setState(() {
                                  lensa.wish = newValue!;
                                  selectedProducts.remove(lensa);
                                });
                              }
                            },
                          )

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
                          DetailCompareLensa(item1: selectedProducts[0],
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

    lensas.forEach((element) {
      if (element.nama_lensa.toLowerCase().contains(text)) {
        searchResult.add(element);
      }
    });

    setState(() {});
  }
}
