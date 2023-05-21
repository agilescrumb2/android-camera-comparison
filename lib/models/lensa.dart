import 'dart:convert';

class Lensa{
  final int id;
  String nama_lensa;
  String bobot;
  String diameter_panjang;
  String aperture_minimum;
  String ukuran_filter;
  String jarak_pemfokusan_terdekat;
  String pembesaran_maks;
  String jumlah_bilah_diafragma;
  String harga;
  String gambar;
  // bool wish;

  Lensa({
    required this.id,
    required this.nama_lensa,
    required this.bobot,
    required this.diameter_panjang,
    required this.aperture_minimum,
    required this.ukuran_filter,
    required this.jarak_pemfokusan_terdekat,
    required this.pembesaran_maks,
    required this.jumlah_bilah_diafragma,
    required this.harga,
    required this.gambar,
    // required this.wish,
  });

  factory Lensa.fromJson(Map<String, dynamic> json) {
    return Lensa(
      id: json["id"],
      nama_lensa: json["nama_lensa"],
      bobot: json["bobot"],
      diameter_panjang: json["diameter_panjang"],
      aperture_minimum: json["aperture_minimum"],
      ukuran_filter: json["ukuran_filter"],
      jarak_pemfokusan_terdekat: json["jarak_pemfokusan_terdekat"],
      pembesaran_maks: json["pembesaran_maks"],
      jumlah_bilah_diafragma: json["jumlah_bilah_diafragma"],
      harga: json["harga"],
      gambar: json["gambar"],
    );
  }
}