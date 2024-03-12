# TP1PROVISC2_Ratu_Syahirah_Khairunnisa

# Implementasi OOP dan Asynchronous dalam Dart

Di sini saya mengimplementasikan Object-Oriented Programming (OOP) dan asynchronous dengan membuat sebuah kelas bernama `Investasi` yang digunakan untuk menghitung nilai masa depan dari sebuah investasi.

## Penjelasan Kode

### 1. Kelas `Investasi`

Kelas `Investasi` digunakan untuk membuat objek yang merepresentasikan sebuah investasi. Berikut adalah atribut-atribut yang dimiliki oleh kelas `Investasi`:

- `namaInvestor`: Nama investor yang terlibat dalam investasi.
- `tanggalInvestasi`: Tanggal dan waktu ketika investasi dilakukan.
- `investasiAwal`: Jumlah uang yang diinvestasikan pada awalnya.
- `tingkatBungaTahunan`: Tingkat bunga tahunan yang diharapkan dari investasi, dalam persen.
- `periodeInvestasi`: Periode investasi, diukur dalam tahun.

Kelas ini memiliki metode `hitungNilaiMasaDepan()` yang digunakan untuk menghitung nilai masa depan dari investasi, dengan mempertimbangkan tingkat bunga tahunan dan periode investasi yang telah diberikan.

**Metode `hitungNilaiMasaDepan()`:**
   - Metode ini menggunakan fitur asynchronous Dart untuk melakukan simulasi perhitungan yang memakan waktu.
   - Pertama, metode ini menggunakan `await Future.delayed(Duration(seconds: 2))` untuk menunggu selama 2 detik, mensimulasikan perhitungan yang memakan waktu.
   - Setelah menunggu, metode ini menggunakan rumus matematika untuk menghitung nilai masa depan dari investasi di akhir periode berdasarkan atribut-atribut yang telah ditentukan dengan menggunakan rumus future value.
     ```
     futureValue = investasiAwal * pow(1 + tingkatBungaTahunan / 100, periodeInvestasi);
     ```
   - Nilai masa depan tersebut diformat menjadi format mata uang Rupiah yang sesuai sebelum dikembalikan.
   - Metode ini mengembalikan nilai masa depan investasi dalam bentuk string yang sudah diformat.


### 2. Main Function

Fungsi `main()` digunakan untuk membuat objek `Investasi`, menghitung nilai masa depan investasi menggunakan metode `hitungNilaiMasaDepan()`, dan mencetak hasilnya ke konsol.

## Asynchronous Programming

Pada implementasi ini, saya menggunakan fitur asynchronous pada Dart untuk melakukan simulasi perhitungan yang memakan waktu, dengan menggunakan `Future.delayed()`. Ini memungkinkan aplikasi untuk menjalankan tugas-tugas lain secara bersamaan sambil menunggu hasil perhitungan.

## Import Library
- Import library `dart:async` agar dapat menggunakan fitur asynchronous.
- Import library `dart:math` agar dapat mengunakan `pow()`.
- Import library `package:intl/intl.dart` agar dapat menggunakan format tanggal dan waktu.

## Screenshot Hasil Program
<img width="469" alt="Hasil Program" src="https://github.com/queenxhr/TP1PROVISC2_Ratu_Syahirah_Khairunnisa/assets/135084798/6817ae39-bb26-4366-89c8-9689ecbe3990">

