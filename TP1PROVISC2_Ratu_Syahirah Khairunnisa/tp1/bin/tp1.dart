import 'dart:async'; // Import pustaka async untuk menggunakan Future
import 'dart:math'; // Import pustaka math untuk menggunakan fungsi pow()
import 'package:intl/intl.dart'; // Import pustaka intl untuk menggunakan DateFormat

class Investasi {
  String namaInvestor; // Nama investor
  DateTime tanggalInvestasi; // Tanggal dan jam investasi
  double investasiAwal; // Jumlah investasi awal dalam rupiah
  double tingkatBungaTahunan; // Tingkat bunga tahunan dalam persen
  int periodeInvestasi; // Periode investasi dalam tahun

  Investasi(this.namaInvestor, this.tanggalInvestasi, this.investasiAwal, this.tingkatBungaTahunan, this.periodeInvestasi);

  Future<String> hitungNilaiMasaDepan() async {
    await Future.delayed(Duration(seconds: 2)); // Simulasi perhitungan yang memakan waktu
    double nilaiMasaDepan = investasiAwal * pow(1 + tingkatBungaTahunan / 100, periodeInvestasi); // Menghitung nilai investasi di akhir periode
    String nilaiMasaDepanTerformat = 'Rp ${nilaiMasaDepan.toStringAsFixed(2).replaceAllMapped( // Mengubah nilai investasi menjadi format mata uang Rupiah
        RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match match) => '${match[1]},')}';
    return nilaiMasaDepanTerformat; // Mengembalikan nilai investasi yang diformat
  }
}

void main() async {
  var namaInvestor = 'Ratu Syahirah Khairunnisa'; // Nama investor
  var tanggalInvestasi = DateTime(2024, 3, 12, 8, 30); // Tanggal dan jam investasi
  var investasiAwal = 10000000.0; // Jumlah investasi awal dalam rupiah
  var tingkatBungaTahunan = 5.0; // Tingkat bunga tahunan dalam persen
  var periodeInvestasi = 10; // Periode investasi dalam tahun

  var investasi = Investasi(namaInvestor, tanggalInvestasi, investasiAwal, tingkatBungaTahunan, periodeInvestasi); // Membuat objek Investasi

  var nilaiMasaDepan = await investasi.hitungNilaiMasaDepan(); // Menunggu hasil perhitungan nilai investasi

  var formatter = DateFormat('yyyy-MM-dd HH:mm'); // Format tanggal dan jam
  var formattedTanggalInvestasi = formatter.format(investasi.tanggalInvestasi); // Memformat tanggal dan jam investasi

  print('Investor: $namaInvestor'); // Mencetak nama investor
  print('Tanggal dan Jam Investasi: $formattedTanggalInvestasi'); // Mencetak tanggal dan jam investasi dengan format yang diinginkan
  print('Nilai investasi pada akhir periode investasi: $nilaiMasaDepan'); // Mencetak nilai investasi di akhir periode
}
