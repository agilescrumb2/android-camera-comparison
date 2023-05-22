import 'dart:convert';

// List<Kamera> postFromJson(String str) => List<Kamera>.from(json.decode(str).map((x) => Kamera.fromJson(x)));
// String postToJson(List<Kamera> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Kamera {
  final int id;
  String nama_kamera;
  String mode_af;
  String built_in_flash;
  String kecepatan_pemotretan;
  String dimensi;
  String iso_efektif;
  String exposure_compensation;
  String mode_flash;
  String resolusi_gambar;
  String image_stabilizer;
  String monitor_lcd_ukuran;
  String monitor_lcd_resolusi;
  String fokus_manual;
  String mode_pemotretan;
  String ukuran_sensor;
  String rentang_kecepatan_rana;
  String bobot;
  String white_balance;
  String harga;
  String gambar;
  String gambar1;
  bool wish;

  Kamera({
    required this.id,
    required this.nama_kamera,
    required this.mode_af,
    required this.built_in_flash,
    required this.kecepatan_pemotretan,
    required this.dimensi,
    required this.iso_efektif,
    required this.exposure_compensation,
    required this.mode_flash,
    required this.resolusi_gambar,
    required this.image_stabilizer,
    required this.monitor_lcd_ukuran,
    required this.monitor_lcd_resolusi,
    required this.fokus_manual,
    required this.mode_pemotretan,
    required this.ukuran_sensor,
    required this.rentang_kecepatan_rana,
    required this.bobot,
    required this.white_balance,
    required this.harga,
    required this.gambar,
    required this.gambar1,
    this.wish = false,
  });

  factory Kamera.fromJson(Map<String, dynamic> json) {
    return Kamera(
      id: json["id"],
      nama_kamera: json["nama_kamera"],
      mode_af: json["mode_af"],
      built_in_flash: json["built_in_flash"],
      kecepatan_pemotretan: json["kecepatan_pemotretan"],
      dimensi: json["dimensi"],
      iso_efektif: json["iso_efektif"],
      exposure_compensation: json["exposure_compensation"],
      mode_flash: json["mode_flash"],
      resolusi_gambar: json["resolusi_gambar"],
      image_stabilizer: json["image_stabilizer"],
      monitor_lcd_ukuran: json["monitor_lcd_ukuran"],
      monitor_lcd_resolusi: json["monitor_lcd_resolusi"],
      fokus_manual: json["fokus_manual"],
      mode_pemotretan: json["mode_pemotretan"],
      ukuran_sensor: json["ukuran_sensor"],
      rentang_kecepatan_rana: json["rentang_kecepatan_rana"],
      bobot: json["bobot"],
      white_balance: json["white_balance"],
      harga: json["harga"],
      gambar: json["gambar"],
      gambar1: json["gambar1"],
    );
  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "nama_kamera": nama_kamera,
    "mode_af": mode_af,
    "built_in_flash": built_in_flash,
    "dimensi": dimensi,
    "iso_efektif": iso_efektif,
    "exposure_compensation": exposure_compensation,
    "mode_flash": mode_flash,
    "resolusi_gambar": resolusi_gambar,
    "image_stabilizer": image_stabilizer,
    "monitor_lcd_ukuran": monitor_lcd_ukuran,
    "monitor_lcd_resolusi": monitor_lcd_resolusi,
    "fokus_manual": fokus_manual,
    "mode_pemotretan": mode_pemotretan,
    "ukuran_sensor": ukuran_sensor,
    "rentang_kecepatan_rana": rentang_kecepatan_rana,
    "bobot": bobot,
    "white_balance": white_balance,
    "harga": harga,
    "gambar": gambar,
    "gambar1": gambar1,
  };
}
