import 'package:flutter/material.dart';
import 'package:android_camera_comparison/primary/beranda.dart';
import 'package:android_camera_comparison/details/detail_screen_fullkit.dart';
import 'package:android_camera_comparison/services/remote_service_fullkit.dart';
import 'package:android_camera_comparison/primary/splash_screen.dart';
import '../models/fullkit.dart';

class ListFullkit extends StatefulWidget {
  ListFullkit({Key? key}) : super(key: key);
  @override
  _ListFullkitState createState() => _ListFullkitState();
  // final List<Fullkit> information = [
//   Fullkit(
//       nama_kamera: 'EOS 200D II (EF-S 18-55mm f/4-5.6 IS STM)',
//       mode_af: 'One-Shot AF, AI Servo AF, AI Focus AF, Servo AF',
//       fokus_manual: 'Yes',
//       builtin_flash: 'Yes',
//       mode_flash: 'E-TTL II Autoflash, FE Lock, Manual pop-up, Retractable, Built-in',
//       panjang_fokus: '28,8 - 88mm (3x)',
//       bidik_perdetik: 'OVF: 5fps (One-Shot AF & AI Servo AF) | Live View: 5fps (One-Shot AF), 3.5fps (Servo AF)',
//       zoom_digi: 'Kira-kira 3x - 10x (hanya movie)',
//       iso: '100 - 25,600 (H:51,200)',
//       resolusi_gambar: '6000 x 4000 (L) 3984 x 2656 (M) 2976 x 1984 (S1) 2400 x 1600 (S2) 6000 x 4000 (RAW/C-RAW)',
//       stabilizer: 'Lensa tipe shift',
//       ukuran_lcd: '3,0 Inch',
//       resolusi_lcd: '1.040.000',
//       sensor: 'APS-C',
//       white_balance: 'Auto (Ambience priority), Auto (White priority), Preset (Daylight, Shade, Cloudy, Tungsten light, White fluorescent light, Flash), Custom, koreksi White balance, dan White balance bracketing, tersedia * Memungkinkan transmisi informasi suhu warna flash (lampu kilat)',
//       harga: 'IDR 15,417,900.00',
//       image: 'assets/img/imgkamera1.png',
//       wish: false
//   ),
//   Fullkit(
//       nama_kamera: 'EOS 3000D Kit (EF S18-55 III)',
//       mode_af: 'One-Shot AF, AI Servo AF, AI Focus AF',
//       fokus_manual: 'Yes',
//       builtin_flash: 'Yes',
//       mode_flash: 'E-TTL II Autoflash, FE Lock, Manual pop-up, Retractable, Built-in',
//       panjang_fokus: '-',
//       bidik_perdetik: '3',
//       zoom_digi: '-',
//       iso: '100 hingga 6400 (H:12800)',
//       resolusi_gambar: '6000 x 4000 (L) 3984 x 2656 (M) 2976 x 1984 (S1) 2400 x 1600 (S2) 6000 x 4000 (RAW/C-RAW)5184 x 3456 (L) 3456 x 2304 (M) 2592 x 1728 (S1) 1920 x 1280 (S2) 720 x 480 (S3) 5184 x 3456 (RAW)',
//       stabilizer : '-',
//       ukuran_lcd: '-',
//       resolusi_lcd: '230000',
//       sensor: 'APS-C',
//       white_balance: '"Auto (Ambience priority), Auto (White priority), Preset (Daylight, Shade, Cloudy, Tungsten light, White fluorescent light, Flash), Custom, Tersedia fitur Custom White balance correction, dan White balance bracketing. *Memungkinkan transmisi informasi suhu warna flash"',
//       harga: 'IDR 6,482,400.00',
//       image: 'assets/img/imgkamera2.png',
//       wish: false
//   ),
//   Fullkit(
//       nama_kamera: 'EOS 5D Mark IV Kit (EF 24 - 105 IS II USM)',
//       mode_af: 'One-Shot AF, AI Servo AF, AI Focus AF, Manual Focus (MF)',
//       fokus_manual: 'Yes',
//       builtin_flash: '-',
//       mode_flash: 'One-Shot AF, AI Servo AF, AI Focus AF, Manual Focus (MF)',
//       panjang_fokus: '24 - 105 mm (4,3x)',
//       bidik_perdetik: '7',
//       zoom_digi: '-',
//       iso: '100 - 32000 (H:102400)',
//       resolusi_gambar: '6720 x 4480 (L) 4464 x 2976 (M) 3360 x 2240 (S1) 1920 x 1280 (S2) 720 x 480 (S3) 6720 x 4480 (RAW) 5040 x 3360 (M-RAW) 3360 x 2240 (S-RAW)',
//       stabilizer: 'Tipe Pergeseran Lensa',
//       ukuran_lcd: '3,2',
//       resolusi_lcd: '1620000',
//       sensor: 'Full Frame',
//       white_balance: 'Auto (Ambience priority), Auto (White priority), Preset (Daylight, Shade, Cloudy, Tungsten light, White fluorescent light, Flash), Pengaturan Temperatur Warna (Kira - kira 2500-10000 K), Personal white balance',
//       harga: 'IDR 72,638,400.00',
//       image: 'assets/img/imgkamera3.png',
//       wish: false
//   ),
//   Fullkit(
//       nama_kamera: 'EOS 6D Mark II Kit (EF24-105mm f/4L IS II USM)',
//       mode_af: 'One-Shot AF, AI Servo AF, AI Focus AF, Manual focusing (MF)',
//       fokus_manual: 'Yes',
//       builtin_flash: '-',
//       mode_flash: 'E-TTL II Autoflash, FE Lock',
//       panjang_fokus: '24 - 105mm(4.3x)',
//       bidik_perdetik: '6.5',
//       zoom_digi: '-',
//       iso: '100 - 40000, expandable to 102400 (expandable range L:50, H1:51200, H2:102400)',
//       resolusi_gambar: '6240 x 4160 (L) 4160 x 2768 (M) 3120 x 2080 (S1) 2400 x 1600 (S2) 6240 x 4160 (RAW) 4680 x 3120 (M-RAW) 3120 x 2080 (S-RAW)',
//       stabilizer: 'Lensa tipe shift',
//       ukuran_lcd: '3.0',
//       resolusi_lcd: '1040000',
//       sensor: 'Full Frame',
//       white_balance: '-',
//       harga: 'IDR 48,606,900.00',
//       image: 'assets/img/imgkamera4.png',
//       wish: false
//   ),
//   Fullkit(
//       nama_kamera: 'EOS 1500D Kit (EF S18-55 IS II)',
//       mode_af: 'One-Shot AF, AI Servo AF, AI Focus AF',
//       fokus_manual: 'Yes',
//       builtin_flash: 'Yes',
//       mode_flash: 'E-TTL II Autoflash, FE Lock, Auto pop-up, Retractable, Built-in',
//       panjang_fokus: '-',
//       bidik_perdetik: '3',
//       zoom_digi: '-',
//       iso: '100 hingga 6400 (H:12800)',
//       resolusi_gambar: '6000 x 4000 (L) 3984 x 2656 (M) 2976 x 1984 (S1) 1920 x 1080 (S2) 720 x 480 (S3) 6000 x 4000 (RAW)',
//       stabilizer: '-',
//       ukuran_lcd: '-',
//       resolusi_lcd: '920000',
//       sensor: 'APS-C',
//       white_balance: '"Auto (Ambience priority), Auto (White priority), Preset (Daylight, Shade, Cloudy, Tungsten light, White fluorescent light, Flash), Custom, Tersedia fitur Custom White balance correction, dan White balance bracketing. *Memungkinkan transmisi informasi suhu warna flash"',
//       harga: 'IDR 9,601,500.00',
//       image: 'assets/img/imgkamera5.png',
//       wish: false
//   ),
// ];
}

class _ListFullkitState extends State<ListFullkit> {
  List<Fullkit>? fullkits;
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
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: fullkits?.length ?? 0,
                itemBuilder: (BuildContext context, int index) {
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
    );
  }
}
