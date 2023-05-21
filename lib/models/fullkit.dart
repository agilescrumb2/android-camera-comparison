import 'dart:convert';

class Fullkit{
  final int id;
  String nama_fulkit;
  String mode_af;
  String built_in_flash;
  String jarak_fokus_terdekat;
  String kecepatan_pemotretan;
  String zoom_digital;
  String dimensi;
  String iso_efektif;
  String mode_flash;
  String panjang_fokus;
  String resolusi_gambar;
  String image_stabilizer;
  String monitor_lcd_ukuran;
  String monitor_lcd_resolusi;
  String fokus_manual;
  String ukuran_sensor;
  String mode_pemotretan;
  String rentang_kecepatan_rana;
  String bobot;
  String white_balance;
  String harga;
  String gambar;
  // bool wish;

  Fullkit({
    required this.id,
    required this.nama_fulkit,
    required this.mode_af,
    required this.built_in_flash,
    required this.jarak_fokus_terdekat,
    required this.kecepatan_pemotretan,
    required this.zoom_digital,
    required this.dimensi,
    required this.iso_efektif,
    required this.mode_flash,
    required this.panjang_fokus,
    required this.resolusi_gambar,
    required this.image_stabilizer,
    required this.monitor_lcd_ukuran,
    required this.monitor_lcd_resolusi,
    required this.fokus_manual,
    required this.ukuran_sensor,
    required this.mode_pemotretan,
    required this.rentang_kecepatan_rana,
    required this.bobot,
    required this.white_balance,
    required this.harga,
    required this.gambar,
    // required this.wish,
  });

  factory Fullkit.fromJson(Map<String, dynamic> json) {
    return Fullkit(
      id: json["id"],
      nama_fulkit: json["nama_fulkit"],
      mode_af: json["mode_af"],
      built_in_flash: json["built_in_flash"],
      jarak_fokus_terdekat: json["jarak_fokus_terdekat"],
      kecepatan_pemotretan: json["kecepatan_pemotretan"],
      zoom_digital: json["zoom_digital"],
      dimensi: json["dimensi"],
      iso_efektif: json["iso_efektif"],
      mode_flash: json["mode_flash"],
      panjang_fokus: json["panjang_fokus"],
      resolusi_gambar: json["resolusi_gambar"],
      image_stabilizer: json["image_stabilizer"],
      monitor_lcd_ukuran: json["monitor_lcd_ukuran"],
      monitor_lcd_resolusi: json["monitor_lcd_resolusi"],
      fokus_manual: json["fokus_manual"],
      ukuran_sensor: json["ukuran_sensor"],
      mode_pemotretan: json["mode_pemotretan"],
      rentang_kecepatan_rana: json["rentang_kecepatan_rana"],
      bobot: json["bobot"],
      white_balance: json["white_balance"],
      harga: json["harga"],
      gambar: json["gambar"],
    );
  }
}