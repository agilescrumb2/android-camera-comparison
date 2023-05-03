import 'package:android_camera_comparison/secondary/detail_compare.dart';
import 'package:android_camera_comparison/secondary/detail_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:android_camera_comparison/primary/beranda.dart';

class ListKameraCompare extends StatefulWidget {
  @override
  State<ListKameraCompare> createState() => _ListKameraCompareState();
}

class _ListKameraCompareState extends State<ListKameraCompare> {
  final List information = [
    {
      'name': 'EOS-1D X Mark III',
      'mode_af': 'OVF: One-Shot AF, AI Servo AF, Manual Live View: One-Shot AF, Servo AF',
      'builtin_flash': '-',
      'bidik_perdetik': 'OVF: Hingga 16 (One-Shot AF/ AI Servo AF) Live View: Hingga 20 (One-Shot AF/ Servo AF)',
      'dimensi': 'Kira-kira 158,0 × 167,6 × 82,6',
      'iso': 'Stills: 100 -102,400 (L:50, H1:204,800, H2:409,600, H3:819,200) Film: 100-25,600 (H1:204,800)',
      'exposure': 'Stills, OVF: Manual: ±5 stop dalam peningkatan 1/3-stop atau 1/2-stop, Stills, Live View dan perekaman film: ±3 stop dalam peningkatan 1/3-stop atau 1/2-stop, AEB: ±3 stop dalam peningkatan 1/3-stop atau 1/2-stop',
      'mode_flash': 'E-TTL II , Manual, Multi, Ext A, Ext M',
      'resolusi_gambar': '5472×3648 (L), 4368×2912 (M1), 3648×2432 (M2), 2736×1824 (S), 5472×3648 (HEIF), 5472×3648 (RAW/C-RAW)',
      'image_stabilizer': 'Stabilisasi gambar elektronik 5-axis dalam bodi',
      'monitor_lcd': '3,15',
      'resolusi_lcd': '2.100.000',
      'fokus_manual': 'Yes',
      'mode_pemotretan': 'Stills: AE Program, AE Prioritas Rana, AE Prioritas Diafragma, Pencahayaan Manual, Pencahayaan bola lampu, mode Pemotretan tersesuai (C1/C2/C3) Perekaman film: AE Program, AE Prioritas Rana, AE Prioritas Diafragma, Pencahayaan Manual, mode Pemotretan tersesuai (C1/C2/C3)',
      'ukuran_sensor': 'Full-Frame CMOS',
      'rentang_rana': '30 - 1/8000 Bulb',
      'bobot': '1440',
      'white_balance': 'Auto (Ambience priority), Auto (White priority), Preset (Daylight, Shade, Cloudy, Tungsten light, White fluorescent light, Flash), Custom 1-5, pengaturan suhu Warna (kira-kira 2500-10000 K), koreksi White Balance dan white balance bracketing*2',
      'harga': '133,000,200.00',
      'image': 'assets/img/body1.png'      ,'wish' : false

    },
    {
      'name': 'EOS 5D Mark IV (Bodi)',
      'mode_af': 'One-Shot AF, AI Servo AF, AI Focus AF, Manual Focus (MF)',
      'builtin_flash': '-',
      'bidik_perdetik': '7',
      'dimensi': '150,7 x 116,4 x 75,9',
      'iso': '100 - 32000 (H:102400)',
      'exposure': 'Manual: ±5 stops pada 1/3- atau peningkatan 1/2-stop , AEB: ±3 stops pada 1/3- atau peningkatkan 1/2-stop',
      'mode_flash': 'E-TTL II Autoflash, FE Lock',
      'resolusi_gambar': '6720 x 4480 (L) 4464 x 2976 (M) 3360 x 2240 (S1) 1920 x 1280 (S2) 720 x 480 (S3) 6720 x 4480 (RAW) 5040 x 3360 (M-RAW) 3360 x 2240 (S-RAW)',
      'image_stabilizer': '-',
      'monitor_lcd': '3,2',
      'resolusi_lcd': '1620000',
      'fokus_manual': 'Yes',
      'mode_pemotretan': 'Program AE (Scene Intelligent Auto, Program), Shutter-priority AE, Aperture-priority AE, Manual exposure, Bulb exposure',
      'ukuran_sensor': 'Full frame',
      'rentang_rana': '30 - 1/8000, Bulb',
      'bobot': '890',
      'white_balance': 'Auto (Ambience priority), Auto (White priority), Preset (Daylight, Shade, Cloudy, Tungsten light, White fluorescent light, Flash), Color temperature setting (approx. 2500-10000 K), Personal white balance',
      'harga': '55,888,500.00',
      'image': 'assets/img/body2.png'      ,'wish' : false

    },
    {
      'name': 'EOS R10 (Bodi)',
      'mode_af': 'One-Shot AF, Servo AF',
      'builtin_flash': 'Yes',
      'bidik_perdetik': 'Rana mekanis & Tirai ke-1 Elektronik: 15 Rana elektronik: 23',
      'dimensi': '122,5 x 87,8 x 83,4',
      'iso': '"Stills: 100–32,000 (H:51,200) Movie: 100–12,800 Film HDR PQ: ISO 100-12,800',
      'exposure': '±3 stops in 1/3-stop or 1/2-stop increments AEB: ±3 stops in 1/3-stop or 1/2-stop increments',
      'mode_flash': 'E-TTL II flash metering: Evaluative (Face Priority), Evaluative, Average',
      'resolusi_gambar': '6000×4000 (JPEG L/RAW/C-RAW/HEIF) 3984×2656 (HEIF, JPEG M) 2976×1984 (HEIF, JPEG S1) 2400×1600 (HEIF, JPEG S2)',
      'image_stabilizer': 'Stabilisasi gambar elektronik 5-axis dalam bodi',
      'monitor_lcd': '3',
      'resolusi_lcd': '1,04 juta',
      'fokus_manual': 'Yes',
      'mode_pemotretan': 'A+/Special scene mode (Mode Pemandangan Khusus)/Creative filters (Filter Kreatif)/Fv/P/Tv/Av/M/B/C1/C2',
      'ukuran_sensor': 'APS-C CMOS',
      'rentang_rana': 'Stills: Tirai ke-1 Mekanis / Elektronik: 30 - 1/4000 Rana elektronik: 30 - 1/16000 Perekaman movie: Auto exposure (Pencahayaan Otomatis): 1/25* - 1/4000, Manual exposure (Pencahayaan manual): 1/8* - 1/4000  *Bervariasi menurut mode pemotretan dan frame rate',
      'bobot': '429',
      'white_balance': 'Auto (Ambience priority / White priority), Daylight, Shade, Cloudy (Efektif untuk suasana subuh dan senja hari), Tungsten light, cahaya Neon Putih, Flash*, Custom, tersedia fitur Pengaturan suhu warna (sekitar 2500–10000 K) White balance shift dan white balance bracketing *Memungkinkan untuk melakukan transmisi informasi suhu warna Lampu Kilat (EX / EL Series Speedlite)',
      'harga': 'IDR 20,113,200.00',
      'image': 'assets/img/body3.png'      ,'wish' : false

    },
    {
      'name': 'EOS 6D Mark II (Bodi)',
      'mode_af': 'One-Shot AF, AI Servo AF, AI Focus AF, Manual focusing (MF)',
      'builtin_flash': '-',
      'bidik_perdetik': '6.5',
      'dimensi': '144.0 x 110.5 x 74.8',
      'iso': '100 - 40000, expandable to 102400 (expandable range L:50, H1:51200, H2:102400)',
      'exposure': 'Manual: ±5 stops in 1/3- or 1/2-stop increments, AEB: ±3 stops in 1/3- or 1/2-stop increments',
      'mode_flash': 'E-TTL II Autoflash, FE Lock',
      'resolusi_gambar': '6240 x 4160 (L) 4160 x 2768 (M) 3120 x 2080 (S1) 2400 x 1600 (S2) 6240 x 4160 (RAW) 4680 x 3120 (M-RAW) 3120 x 2080 (S-RAW)',
      'image_stabilizer': '-',
      'monitor_lcd': '3.0',
      'resolusi_lcd': '1040000',
      'fokus_manual': 'Yes',
      'mode_pemotretan': '-',
      'ukuran_sensor': 'Full frame',
      'rentang_rana': '30 - 1/4000, Bulb',
      'bobot': '765',
      'white_balance': 'Auto (Ambience priority), Auto (White priority), Preset (Daylight, Shade, Cloudy, Tungsten light, White fluorescent light, Flash), Custom, Color temperature setting (approx. 2500-10000 K), White balance correction and white balance bracketing features provided * Flash color temperature information transmission possible',
      'harga': 'IDR 31,290,900.00',
      'image': 'assets/img/body4.png'      ,'wish' : false

    },
    {
      'name': 'EOS R (Bodi)',
      'mode_af': 'One-Shot AF, AI Servo AF, Manual',
      'builtin_flash': '-',
      'bidik_perdetik': '8 (One-Shot AF) / 5 (Servo AF)',
      'dimensi': '135,8 x 98,3 x 84,4',
      'iso': '100 - 40000 (L:50, H1:52100, H1:102400)',
      'exposure': 'Manual: ±3 stop dalam peningkatan 1/3-stop atau 1/2-stop, AEB: ±2 stop dalam peningkatan 1/3-stop atau 1/2-stop perekaman Film: ±3 stop dalam peningkatan 1/3- atau 1/2-stop',
      'mode_flash': '-',
      'resolusi_gambar': '6720 x 4480 (L) 4464 x 2976 (M) 3360 x 2240 (S1) 2400 x 1600 (S2) 6720 x 4480 (RAW) 6720 x 4480 (C-RAW)',
      'image_stabilizer': 'Stabilisasi gambar elektronik 5-axis dalam bodi',
      'monitor_lcd': '3,15',
      'resolusi_lcd': '2.100.000',
      'fokus_manual': 'Yes',
      'mode_pemotretan': 'Stills: Scene Intelligent Auto, Flexible-priority AE, Program AE, Shutter-priority AE, Aperture-priority AE, Manual exposure, Bulb exposure, Custom shooting modes (C1/C2/C3) Movies: Scene Intelligent Auto, Program AE, Shutter-priority AE, Aperture-priority AE, Manual exposure, Custom shooting modes (C1/C2/C3)',
      'ukuran_sensor': 'Full-frame CMOS',
      'rentang_rana': '30 - 1/8000, Bulb',
      'bobot': '660',
      'white_balance': 'Auto (Ambience priority), Auto (White priority), Preset (Daylight, Shade, Cloudy, Tungsten light, White fluorescent light, Flash), Custom, pengaturan suhu Warna (Kira-kira 2500-10000 K), koreksi White balance dan White balance bracketing, tersedia * Memungkinkan Transmisi informasi suhu warna flash (lampu kilat)',
      'harga': 'IDR 30,169,800.00',
      'image': 'assets/img/body5.png'
      ,'wish' : false
    },
  ];

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
                          // onChanged: (value) {
                          //   setState(() {
                          //     query = value;
                          //   });
                          // },
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
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: information.length,
                itemBuilder: (BuildContext context, int index) {
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
                                DetailScreenBody(product: information[index]),
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
                                image: AssetImage(
                                  information[index]['image'],
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
                                    information[index]['name'],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  SizedBox(height: 8),
                                  Text(
                                    information[index]['harga'],
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
                              value: information[index]['wish'],
                              onChanged: (newValue) {
                                setState(() {
                                  information[index]['wish'] = newValue;
                            });
                          })
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
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: Colors.deepPurple,
          height: 40,
          child: GestureDetector(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [Text('Compare', )],
            ),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailCompare())
              );
            },
          )
        )
      )
    );
  }
}
