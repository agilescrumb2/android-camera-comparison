import 'dart:convert';
List<Kamera> postFromJson(String str) => List<Kamera>.from(json.decode(str).map((x) => Kamera.fromJson(x)));
String postToJson(List<Kamera> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Kamera {
  String name;
  String mode_af;
  String builtin_flash;
  String dimensi;
  String bidik_perdetik;
  String iso;
  String exposure;
  String mode_flash;
  String resolusi_gambar;
  String image_stabilizer;
  String monitor_lcd;
  String resolusi_lcd;
  String fokus_manual;
  String mode_pemotretan;
  String ukuran_sensor;
  String rentang_rana;
  String bobot;
  String white_balance;
  String harga;
  String image;
  // bool wish = false;

  factory Kamera.fromJson(Map<String, dynamic> json) => Kamera(
    name: json["name"],
    mode_af: json["mode_af"],
    builtin_flash: json["builtin_flash"],
    dimensi: json["dimensi"],
    bidik_perdetik: json["bidik_perdetik"],
    iso: json["iso"],
    exposure: json["exposure"],
    mode_flash: json["mode_flash"],
    resolusi_gambar: json["resolusi_gambar"],
    image_stabilizer: json["image_stabilizer"],
    monitor_lcd: json["monitor_lcd"],
    resolusi_lcd: json["resolusi_lcd"],
    fokus_manual: json["fokus_manual"],
    mode_pemotretan: json["mode_pemotretan"],
    ukuran_sensor: json["ukuran_sensor"],
    rentang_rana: json["rentang_rana"],
    bobot: json["bobot"],
    white_balance: json["white_balance"],
    harga: json["harga"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "mode_af": mode_af,
    "builtin_flash": builtin_flash,
    "dimensi": dimensi,
    "bidik_perdetik": bidik_perdetik,
    "iso": iso,
    "exposure": exposure,
    "mode_flash": mode_flash,
    "resolusi_gambar": resolusi_gambar,
    "image_stabilizer": image_stabilizer,
    "monitor_lcd": monitor_lcd,
    "resolusi_lcd": resolusi_lcd,
    "fokus_manual": fokus_manual,
    "mode_pemotretan": mode_pemotretan,
    "ukuran_sensor": ukuran_sensor,
    "rentang_rana": rentang_rana,
    "bobot": bobot,
    "white_balance": white_balance,
    "harga": harga,
    "image": image,
  };

  Kamera({
    required this.name,
    required this.mode_af,
    required this.builtin_flash,
    required this.dimensi,
    required this.bidik_perdetik,
    required this.iso,
    required this.exposure,
    required this.mode_flash,
    required this.resolusi_gambar,
    required this.image_stabilizer,
    required this.monitor_lcd,
    required this.resolusi_lcd,
    required this.fokus_manual,
    required this.mode_pemotretan,
    required this.ukuran_sensor,
    required this.rentang_rana,
    required this.bobot,
    required this.white_balance,
    required this.harga,
    required this.image,
    // this.wish = false,
  });
}
