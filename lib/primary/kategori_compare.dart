// import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
// import 'beranda.dart';
//
// class KategoriCompare extends StatelessWidget{
//   const KategoriCompare({super.key});
//
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Camera List'),
//         backgroundColor: Colors.deepPurple,
//         actions: [
//           IconButton(
//             padding: EdgeInsets.only(right: 20.0),
//             icon: Image.asset('assets/img/white.png'),
//             onPressed: (){
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => HomePage()),
//               );
//             },
//           ),
//         ],
//         bottom: PreferredSize(
//           preferredSize: Size.fromHeight(50.0),
//           child: Padding(
//             padding: const EdgeInsets.only(bottom: 7.0),
//             child: Container(
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(50),
//               ),
//               child: SizedBox(
//                 width: 400,
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: TextField(
//                         decoration: InputDecoration(
//                           hintText: 'Cari Barang Yang Ingin Dilihat',
//                           border: InputBorder.none,
//                           contentPadding: EdgeInsets.symmetric(horizontal: 16),
//                         ),
//                         // onChanged: (value) {
//                         //   setState(() {
//                         //     query = value;
//                         //   });
//                         // },
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 4.5),
//                       child: CircleAvatar(
//                         backgroundColor: Colors.deepPurple,
//                         child: IconButton(
//                             onPressed: () {},
//                             icon: Icon(Icons.search, color: Colors.white)
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }