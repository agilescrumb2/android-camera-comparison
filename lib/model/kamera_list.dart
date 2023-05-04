class KameraList {
  final String nama_kamera;
  final String gambar;
  final String harga;

  KameraList({
    required this.nama_kamera,
    required this.gambar,
    required this.harga,
  });

  factory KameraList.fromJson(Map<String, dynamic> json) {
    return KameraList(
        nama_kamera: json['nama_kamera'],
        gambar: json['gambar'],
        harga: json['harga']
    );
  }
}