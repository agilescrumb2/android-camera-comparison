import 'package:android_camera_comparison/models/fullkit.dart';
import 'package:android_camera_comparison/comparisons/detail_compare_fullkit.dart';
import 'package:android_camera_comparison/details/detail_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:android_camera_comparison/primary/beranda.dart';
import 'package:android_camera_comparison/services/remote_service_fullkit.dart';
import 'package:android_camera_comparison/details/detail_screen_fullkit.dart';
import 'package:android_camera_comparison/primary/splash_screen.dart';

class ListFullkitCompare extends StatefulWidget {
  @override
  State<ListFullkitCompare> createState() => _ListFullkitCompareState();
}

class _ListFullkitCompareState extends State<ListFullkitCompare> {
  TextEditingController controller = new TextEditingController();
  List<Fullkit> searchResult = [];
  List<Fullkit> selectedProducts = [];
  List<Fullkit> fullkits = [];
  var isLoaded = false;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    fullkits = await RemoteServiceFullkit().getFullkits();
    if(fullkits != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Full-Set List'),
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
        color: Colors.deepPurpleAccent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: searchResult.length != 0 || controller.text.isNotEmpty ? ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: searchResult?.length ?? 0,
                itemBuilder: (context, index) {
                  if (fullkits == null) return null;
                  final fullkit = searchResult?[index];
                  if (fullkit == null) return null;
                  return Card(
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
                                DetailScreenFullkit(product: fullkit),
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
                              //   colors: [Colors.blue, Colors.green],
                              // ),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15.0),
                                  bottomLeft: Radius.circular(15.0)
                              ),
                              image: DecorationImage(
                                image: NetworkImage(
                                  fullkit.gambar,
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
                                    fullkit.nama_fulkit,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  SizedBox(height: 8),
                                  Text(
                                    'Rp. ${fullkit.harga}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 21,
                                      color: Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Checkbox(
                            value: fullkit.wish,
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
                                } else {
                                    setState(() {
                                    fullkit.wish = newValue!;
                                    selectedProducts.add(fullkit);
                                  });
                                }
                              } else {
                                setState(() {
                                  fullkit.wish = newValue!;
                                  selectedProducts.remove(fullkit);
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
                itemCount: fullkits?.length ?? 0,
                itemBuilder: (context, index) {
                  if (fullkits == null) return null;
                  final fullkit = fullkits?[index];
                  if (fullkit == null) return null;
                  return Card(
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
                                DetailScreenFullkit(product: fullkit),
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
                              //   colors: [Colors.blue, Colors.green],
                              // ),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15.0),
                                  bottomLeft: Radius.circular(15.0)
                              ),
                              image: DecorationImage(
                                image: NetworkImage(
                                  fullkit.gambar,
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
                                    fullkit.nama_fulkit,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  SizedBox(height: 8),
                                  Text(
                                    'Rp. ${fullkit.harga}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 21,
                                      color: Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Checkbox(
                            value: fullkit.wish,
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
                                } else {
                                  setState(() {
                                    fullkit.wish = newValue!;
                                    selectedProducts.add(fullkit);
                                  });
                                }
                              } else {
                                setState(() {
                                  fullkit.wish = newValue!;
                                  selectedProducts.remove(fullkit);
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
                if (selectedProducts.length != 2) {
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
                else {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>
                          DetailCompareFullkit(item1: selectedProducts[0],
                              item2: selectedProducts[1]))
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
                    children: [Text('COMPARE', style: TextStyle(color: Colors.white))],
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

    fullkits.forEach((element) {
      if (element.nama_fulkit.toLowerCase().contains(text)) {
        searchResult.add(element);
      }
    });

    setState(() {});
  }
}
