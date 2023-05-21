// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import '../models/fullkit.dart';
// import '../models/kamera.dart';
//
// class DetailCompareFullkit extends StatelessWidget{
//   final Fullkit item1;
//   final Fullkit item2;
//   DetailCompareFullkit({Key? key, required this.item1, required this.item2}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context){
//     const Color colortwo = Color.fromRGBO(114, 91, 238, 1);
//     return SafeArea(
//         child: Scaffold(
//           appBar: AppBar(
//             backgroundColor: colortwo,
//             elevation: 0,
//             title: Text('Compare'),
//             centerTitle: true,
//           ),
//           body: SingleChildScrollView(
//             child: Column(
//               children: [
//                 Container(
//                   padding: EdgeInsets.all(32.0),
//                   decoration: BoxDecoration(
//                       color: colortwo,
//                       borderRadius: BorderRadius.only(
//                           bottomLeft: Radius.circular(40),
//                           bottomRight: Radius.circular(40)
//                       )
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Container(
//                         padding: EdgeInsets.all(20.0),
//                         child: Image.asset(item1.image, width: 100, height: 100),
//                         width: 120,
//                         height: 120,
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(40),
//                         ),
//                       ),
//                       Container(
//                         padding: EdgeInsets.all(20.0),
//                         child: Image.asset(item2.image, width: 100, height: 100),
//                         width: 120,
//                         height: 120,
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(40),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   padding: EdgeInsets.all(30),
//                   child: Column(
//                     children: [
//                       Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Expanded(
//                             flex: 3,
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   children: [
//                                     Expanded(
//                                       child: Text(
//                                         item1.nama_kamera,
//                                         style: TextStyle(
//                                             fontSize: 20,
//                                             fontWeight: FontWeight.bold)
//                                         ,),
//                                     )
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Expanded(
//                             flex: 3,
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   children: [
//                                     Expanded(
//                                       child: Text(
//                                         item2.nama_kamera
//
//                                         ,
//                                         style: TextStyle(
//                                             fontSize: 20,
//                                             fontWeight: FontWeight.bold)
//                                         ,),
//                                     )
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ), //Judul
//                       SizedBox(height: 10,),
//                       Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Expanded(
//                             flex: 3,
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   children: [
//                                     Expanded(
//                                       child: Text(
//                                         item1.harga,
//                                         style: TextStyle(
//                                             fontSize: 14,
//                                             fontWeight: FontWeight.w600)
//                                         ,),
//                                     )
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Expanded(
//                             flex: 3,
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   children: [
//                                     Expanded(
//                                       child: Text(
//                                         item2.harga,
//                                         style: TextStyle(
//                                             fontSize: 14,
//                                             fontWeight: FontWeight.w600)
//                                         ,),
//                                     )
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ), //Harga
//                       SizedBox(height: 20,),
//                       Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Expanded(
//                             flex: 3,
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.only(right: 15),
//                                       height: 20.0,
//                                       width: 20.0,
//                                       decoration: new BoxDecoration(
//                                         color: colortwo ,
//                                         shape: BoxShape.circle,
//                                       ),
//                                     ),
//                                     Text(' Mode AF', style: TextStyle(fontWeight: FontWeight.w600),)
//                                   ],
//                                 ),
//                                 SizedBox(height: 5,),
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Expanded(
//                                         child: Text(
//                                           item1.mode_af,
//                                           overflow: TextOverflow.ellipsis,
//                                           maxLines: 4,))
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                           Expanded(
//                             flex: 3,
//                             child: Column(
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.only(right: 15),
//                                       height: 20.0,
//                                       width: 20.0,
//                                       decoration: new BoxDecoration(
//                                         color: colortwo ,
//                                         shape: BoxShape.circle,
//                                       ),
//                                     ),
//                                     Text(' Mode AF', style: TextStyle(fontWeight: FontWeight.w600),)
//                                   ],
//                                 ),
//                                 SizedBox(height: 5,),
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Expanded(
//                                         child: Text(
//                                           item2.mode_af,
//                                           overflow: TextOverflow.ellipsis,
//                                           maxLines: 4,)
//                                     )
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                         ],
//                       ), //Mode AF
//                       SizedBox(height: 10,),
//                       Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Expanded(
//                             flex: 3,
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.only(right: 15),
//                                       height: 20.0,
//                                       width: 20.0,
//                                       decoration: new BoxDecoration(
//                                         color: colortwo ,
//                                         shape: BoxShape.circle,
//                                       ),
//                                     ),
//                                     Text(' Fokus Manual', style: TextStyle(fontWeight: FontWeight.w600),)
//                                   ],
//                                 ),
//                                 SizedBox(height: 5,),
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Expanded(
//                                         child: Text(
//                                           item1.fokus_manual,
//                                           overflow: TextOverflow.ellipsis,
//                                           maxLines: 4,))
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                           Expanded(
//                             flex: 3,
//                             child: Column(
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.only(right: 15),
//                                       height: 20.0,
//                                       width: 20.0,
//                                       decoration: new BoxDecoration(
//                                         color: colortwo ,
//                                         shape: BoxShape.circle,
//                                       ),
//                                     ),
//                                     Text(' Fokus Manual', style: TextStyle(fontWeight: FontWeight.w600),)
//                                   ],
//                                 ),
//                                 SizedBox(height: 5,),
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Expanded(
//                                         child: Text(
//                                           item2.fokus_manual,
//                                           overflow: TextOverflow.ellipsis,
//                                           maxLines: 4,)
//                                     )
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                         ],
//                       ), //Fokus Manual
//                       SizedBox(height: 10,),
//                       Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Expanded(
//                             flex: 3,
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.only(right: 15),
//                                       height: 20.0,
//                                       width: 20.0,
//                                       decoration: new BoxDecoration(
//                                         color: colortwo ,
//                                         shape: BoxShape.circle,
//                                       ),
//                                     ),
//                                     Text(' Built in Flash', style: TextStyle(fontWeight: FontWeight.w600),)
//                                   ],
//                                 ),
//                                 SizedBox(height: 5,),
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Expanded(
//                                         child: Text(
//                                           item1.builtin_flash,
//                                           overflow: TextOverflow.ellipsis,
//                                           maxLines: 4,))
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                           Expanded(
//                             flex: 3,
//                             child: Column(
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.only(right: 15),
//                                       height: 20.0,
//                                       width: 20.0,
//                                       decoration: new BoxDecoration(
//                                         color: colortwo ,
//                                         shape: BoxShape.circle,
//                                       ),
//                                     ),
//                                     Text(' Built in Flash', style: TextStyle(fontWeight: FontWeight.w600),)
//                                   ],
//                                 ),
//                                 SizedBox(height: 5,),
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Expanded(
//                                         child: Text(
//                                           item2.builtin_flash,
//                                           overflow: TextOverflow.ellipsis,
//                                           maxLines: 4,)
//                                     )
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                         ],
//                       ), //Built in Flash
//                       SizedBox(height: 10,),
//                       Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Expanded(
//                             flex: 3,
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.only(right: 15),
//                                       height: 20.0,
//                                       width: 20.0,
//                                       decoration: new BoxDecoration(
//                                         color: colortwo ,
//                                         shape: BoxShape.circle,
//                                       ),
//                                     ),
//                                     Text(' Mode Flash', style: TextStyle(fontWeight: FontWeight.w600),)
//                                   ],
//                                 ),
//                                 SizedBox(height: 5,),
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Expanded(
//                                         child: Text(
//                                           item1.mode_flash,
//                                           overflow: TextOverflow.ellipsis,
//                                           maxLines: 4,))
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                           Expanded(
//                             flex: 3,
//                             child: Column(
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.only(right: 15),
//                                       height: 20.0,
//                                       width: 20.0,
//                                       decoration: new BoxDecoration(
//                                         color: colortwo ,
//                                         shape: BoxShape.circle,
//                                       ),
//                                     ),
//                                     Text(' Mode Flash', style: TextStyle(fontWeight: FontWeight.w600),)
//                                   ],
//                                 ),
//                                 SizedBox(height: 5,),
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Expanded(
//                                         child: Text(
//                                           item2.mode_flash,
//                                           overflow: TextOverflow.ellipsis,
//                                           maxLines: 4,)
//                                     )
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                         ],
//                       ), //Mode Flash
//                       SizedBox(height: 10,),
//                       Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Expanded(
//                             flex: 3,
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.only(right: 15),
//                                       height: 20.0,
//                                       width: 20.0,
//                                       decoration: new BoxDecoration(
//                                         color: colortwo ,
//                                         shape: BoxShape.circle,
//                                       ),
//                                     ),
//                                     Text(' Panjang Fokus', style: TextStyle(fontWeight: FontWeight.w600),)
//                                   ],
//                                 ),
//                                 SizedBox(height: 5,),
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Expanded(
//                                         child: Text(
//                                           item1.panjang_fokus,
//                                           overflow: TextOverflow.ellipsis,
//                                           maxLines: 4,))
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                           Expanded(
//                             flex: 3,
//                             child: Column(
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.only(right: 15),
//                                       height: 20.0,
//                                       width: 20.0,
//                                       decoration: new BoxDecoration(
//                                         color: colortwo ,
//                                         shape: BoxShape.circle,
//                                       ),
//                                     ),
//                                     Text(' Panjang Fokus', style: TextStyle(fontWeight: FontWeight.w600),)
//                                   ],
//                                 ),
//                                 SizedBox(height: 5,),
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Expanded(
//                                         child: Text(
//                                           item2.panjang_fokus,
//                                           overflow: TextOverflow.ellipsis,
//                                           maxLines: 4,)
//                                     )
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                         ],
//                       ), //Panjang Fokus
//                       SizedBox(height: 10,),
//                       Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Expanded(
//                             flex: 3,
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.only(right: 15),
//                                       height: 20.0,
//                                       width: 20.0,
//                                       decoration: new BoxDecoration(
//                                         color: colortwo ,
//                                         shape: BoxShape.circle,
//                                       ),
//                                     ),
//                                     Text(' Bidik perDetik', style: TextStyle(fontWeight: FontWeight.w600),)
//                                   ],
//                                 ),
//                                 SizedBox(height: 5,),
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Expanded(
//                                         child: Text(
//                                           item1.bidik_perdetik,
//                                           overflow: TextOverflow.ellipsis,
//                                           maxLines: 4,))
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                           Expanded(
//                             flex: 3,
//                             child: Column(
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.only(right: 15),
//                                       height: 20.0,
//                                       width: 20.0,
//                                       decoration: new BoxDecoration(
//                                         color: colortwo ,
//                                         shape: BoxShape.circle,
//                                       ),
//                                     ),
//                                     Text(' Bidik perDetik', style: TextStyle(fontWeight: FontWeight.w600),)
//                                   ],
//                                 ),
//                                 SizedBox(height: 5,),
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Expanded(
//                                         child: Text(
//                                           item2.bidik_perdetik,
//                                           overflow: TextOverflow.ellipsis,
//                                           maxLines: 4,)
//                                     )
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                         ],
//                       ), //Bidik perDetik
//                       SizedBox(height: 10,),
//                       Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Expanded(
//                             flex: 3,
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.only(right: 15),
//                                       height: 20.0,
//                                       width: 20.0,
//                                       decoration: new BoxDecoration(
//                                         color: colortwo ,
//                                         shape: BoxShape.circle,
//                                       ),
//                                     ),
//                                     Text(' Zoom Digital', style: TextStyle(fontWeight: FontWeight.w600),)
//                                   ],
//                                 ),
//                                 SizedBox(height: 5,),
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Expanded(
//                                         child: Text(
//                                           item1.zoom_digi,
//                                           overflow: TextOverflow.ellipsis,
//                                           maxLines: 4,))
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                           Expanded(
//                             flex: 3,
//                             child: Column(
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.only(right: 15),
//                                       height: 20.0,
//                                       width: 20.0,
//                                       decoration: new BoxDecoration(
//                                         color: colortwo ,
//                                         shape: BoxShape.circle,
//                                       ),
//                                     ),
//                                     Text(' Zoom Digital', style: TextStyle(fontWeight: FontWeight.w600),)
//                                   ],
//                                 ),
//                                 SizedBox(height: 5,),
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Expanded(
//                                         child: Text(
//                                           item2.zoom_digi,
//                                           overflow: TextOverflow.ellipsis,
//                                           maxLines: 4,)
//                                     )
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                         ],
//                       ), //Zoom Digital
//                       SizedBox(height: 10,),
//                       Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Expanded(
//                             flex: 3,
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.only(right: 15),
//                                       height: 20.0,
//                                       width: 20.0,
//                                       decoration: new BoxDecoration(
//                                         color: colortwo ,
//                                         shape: BoxShape.circle,
//                                       ),
//                                     ),
//                                     Text(' ISO', style: TextStyle(fontWeight: FontWeight.w600),)
//                                   ],
//                                 ),
//                                 SizedBox(height: 5,),
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Expanded(
//                                         child: Text(
//                                           item1.iso,
//                                           overflow: TextOverflow.ellipsis,
//                                           maxLines: 4,))
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                           Expanded(
//                             flex: 3,
//                             child: Column(
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.only(right: 15),
//                                       height: 20.0,
//                                       width: 20.0,
//                                       decoration: new BoxDecoration(
//                                         color: colortwo ,
//                                         shape: BoxShape.circle,
//                                       ),
//                                     ),
//                                     Text(' ISO', style: TextStyle(fontWeight: FontWeight.w600),)
//                                   ],
//                                 ),
//                                 SizedBox(height: 5,),
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Expanded(
//                                         child: Text(
//                                           item2.iso,
//                                           overflow: TextOverflow.ellipsis,
//                                           maxLines: 4,)
//                                     )
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                         ],
//                       ), //ISO
//                       SizedBox(height: 10,),
//                       Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Expanded(
//                             flex: 3,
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.only(right: 15),
//                                       height: 20.0,
//                                       width: 20.0,
//                                       decoration: new BoxDecoration(
//                                         color: colortwo ,
//                                         shape: BoxShape.circle,
//                                       ),
//                                     ),
//                                     Text(' Resolusi Gambar', style: TextStyle(fontWeight: FontWeight.w600),)
//                                   ],
//                                 ),
//                                 SizedBox(height: 5,),
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Expanded(
//                                         child: Text(
//                                           item1.resolusi_gambar,
//                                           overflow: TextOverflow.ellipsis,
//                                           maxLines: 4,))
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                           Expanded(
//                             flex: 3,
//                             child: Column(
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.only(right: 15),
//                                       height: 20.0,
//                                       width: 20.0,
//                                       decoration: new BoxDecoration(
//                                         color: colortwo ,
//                                         shape: BoxShape.circle,
//                                       ),
//                                     ),
//                                     Text(' Resolusi Gambar', style: TextStyle(fontWeight: FontWeight.w600),)
//                                   ],
//                                 ),
//                                 SizedBox(height: 5,),
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Expanded(
//                                         child: Text(
//                                           item2.resolusi_gambar,
//                                           overflow: TextOverflow.ellipsis,
//                                           maxLines: 4,)
//                                     )
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                         ],
//                       ), //Resolusi Gambar
//                       SizedBox(height: 10,),
//                       Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Expanded(
//                             flex: 3,
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.only(right: 15),
//                                       height: 20.0,
//                                       width: 20.0,
//                                       decoration: new BoxDecoration(
//                                         color: colortwo ,
//                                         shape: BoxShape.circle,
//                                       ),
//                                     ),
//                                     Text(' Stabilizer', style: TextStyle(fontWeight: FontWeight.w600),)
//                                   ],
//                                 ),
//                                 SizedBox(height: 5,),
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Expanded(
//                                         child: Text(
//                                           item1.stabilizer,
//                                           overflow: TextOverflow.ellipsis,
//                                           maxLines: 4,))
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                           Expanded(
//                             flex: 3,
//                             child: Column(
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.only(right: 15),
//                                       height: 20.0,
//                                       width: 20.0,
//                                       decoration: new BoxDecoration(
//                                         color: colortwo ,
//                                         shape: BoxShape.circle,
//                                       ),
//                                     ),
//                                     Text(' Stabilizer', style: TextStyle(fontWeight: FontWeight.w600),)
//                                   ],
//                                 ),
//                                 SizedBox(height: 5,),
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Expanded(
//                                         child: Text(
//                                           item2.stabilizer,
//                                           overflow: TextOverflow.ellipsis,
//                                           maxLines: 4,)
//                                     )
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                         ],
//                       ), //Stabilizer
//                       SizedBox(height: 10,),
//                       Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Expanded(
//                             flex: 3,
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.only(right: 15),
//                                       height: 20.0,
//                                       width: 20.0,
//                                       decoration: new BoxDecoration(
//                                         color: colortwo ,
//                                         shape: BoxShape.circle,
//                                       ),
//                                     ),
//                                     Text(' Ukuran LCD', style: TextStyle(fontWeight: FontWeight.w600),)
//                                   ],
//                                 ),
//                                 SizedBox(height: 5,),
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Expanded(
//                                         child: Text(
//                                           item1.ukuran_lcd,
//                                           overflow: TextOverflow.ellipsis,
//                                           maxLines: 4,))
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                           Expanded(
//                             flex: 3,
//                             child: Column(
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.only(right: 15),
//                                       height: 20.0,
//                                       width: 20.0,
//                                       decoration: new BoxDecoration(
//                                         color: colortwo ,
//                                         shape: BoxShape.circle,
//                                       ),
//                                     ),
//                                     Text(' Ukuran LCD', style: TextStyle(fontWeight: FontWeight.w600),)
//                                   ],
//                                 ),
//                                 SizedBox(height: 5,),
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Expanded(
//                                         child: Text(
//                                           item2.ukuran_lcd,
//                                           overflow: TextOverflow.ellipsis,
//                                           maxLines: 4,)
//                                     )
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                         ],
//                       ), //Ukuran LCD
//                       SizedBox(height: 10,),
//                       Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Expanded(
//                             flex: 3,
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.only(right: 15),
//                                       height: 20.0,
//                                       width: 20.0,
//                                       decoration: new BoxDecoration(
//                                         color: colortwo ,
//                                         shape: BoxShape.circle,
//                                       ),
//                                     ),
//                                     Text(' Resolusi LCD', style: TextStyle(fontWeight: FontWeight.w600),)
//                                   ],
//                                 ),
//                                 SizedBox(height: 5,),
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Expanded(
//                                         child: Text(
//                                           item1.resolusi_lcd,
//                                           overflow: TextOverflow.ellipsis,
//                                           maxLines: 4,))
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                           Expanded(
//                             flex: 3,
//                             child: Column(
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.only(right: 15),
//                                       height: 20.0,
//                                       width: 20.0,
//                                       decoration: new BoxDecoration(
//                                         color: colortwo ,
//                                         shape: BoxShape.circle,
//                                       ),
//                                     ),
//                                     Text(' Resolusi LCD', style: TextStyle(fontWeight: FontWeight.w600),)
//                                   ],
//                                 ),
//                                 SizedBox(height: 5,),
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Expanded(
//                                         child: Text(
//                                           item2.resolusi_lcd,
//                                           overflow: TextOverflow.ellipsis,
//                                           maxLines: 4,)
//                                     )
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                         ],
//                       ), //Resolusi LCD
//                       SizedBox(height: 10,),
//                       Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Expanded(
//                             flex: 3,
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.only(right: 15),
//                                       height: 20.0,
//                                       width: 20.0,
//                                       decoration: new BoxDecoration(
//                                         color: colortwo ,
//                                         shape: BoxShape.circle,
//                                       ),
//                                     ),
//                                     Text(' Sensor', style: TextStyle(fontWeight: FontWeight.w600),)
//                                   ],
//                                 ),
//                                 SizedBox(height: 5,),
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Expanded(
//                                         child: Text(
//                                           item1.sensor,
//                                           overflow: TextOverflow.ellipsis,
//                                           maxLines: 4,))
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                           Expanded(
//                             flex: 3,
//                             child: Column(
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.only(right: 15),
//                                       height: 20.0,
//                                       width: 20.0,
//                                       decoration: new BoxDecoration(
//                                         color: colortwo ,
//                                         shape: BoxShape.circle,
//                                       ),
//                                     ),
//                                     Text(' Sensor', style: TextStyle(fontWeight: FontWeight.w600),)
//                                   ],
//                                 ),
//                                 SizedBox(height: 5,),
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Expanded(
//                                         child: Text(
//                                           item2.sensor,
//                                           overflow: TextOverflow.ellipsis,
//                                           maxLines: 4,)
//                                     )
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                         ],
//                       ), //Sensor
//                       SizedBox(height: 10,),
//                       Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Expanded(
//                             flex: 3,
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.only(right: 15),
//                                       height: 20.0,
//                                       width: 20.0,
//                                       decoration: new BoxDecoration(
//                                         color: colortwo ,
//                                         shape: BoxShape.circle,
//                                       ),
//                                     ),
//                                     Text(' White Balance', style: TextStyle(fontWeight: FontWeight.w600),)
//                                   ],
//                                 ),
//                                 SizedBox(height: 5,),
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Expanded(
//                                         child: Text(
//                                           item1.white_balance,
//                                           overflow: TextOverflow.ellipsis,
//                                           maxLines: 4,))
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                           Expanded(
//                             flex: 3,
//                             child: Column(
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.only(right: 15),
//                                       height: 20.0,
//                                       width: 20.0,
//                                       decoration: new BoxDecoration(
//                                         color: colortwo ,
//                                         shape: BoxShape.circle,
//                                       ),
//                                     ),
//                                     Text(' White Balance', style: TextStyle(fontWeight: FontWeight.w600),)
//                                   ],
//                                 ),
//                                 SizedBox(height: 5,),
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Expanded(
//                                         child: Text(
//                                           item2.white_balance,
//                                           overflow: TextOverflow.ellipsis,
//                                           maxLines: 4,)
//                                     )
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                         ],
//                       ), //White Balance
//                       SizedBox(height: 10,),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//         )
//     );
//   }
// }