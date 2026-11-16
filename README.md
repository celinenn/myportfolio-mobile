Name : Celine Nafisa Setiawan

NPM : 2506590201

Class : PBP D

Jurusan : Ilmu Komputer


## Pertanyaan Relatif

### Tugas 7

1. Pohon widget merupakan gambaran bagaimana widget-widget saling bersarang (nested) di dalam aplikasi, mulai dari widget akar (root) hingga widget daun (leaf) yang paling spesifik. 
Sebuah widget parent dapat memiliki satu atau lebih widget child (melalui properti seperti child atau children). Sedangkan widget parent bertanggung jawab untuk mengatur tata letak (layout), batasan ukuran (constraints), dan perilaku turunannya.

2. List widget yang saya gunakan:
- __MaterialApp__: Widget akar (root) yang mengonfigurasi tema global, judul aplikasi, dan rute utama.
- __Scaffold__: Menyediakan kerangka visual dasar Material Design (seperti pengaturan AppBar, body, dan drawer).
- __AppBar__: Menampilkan bilah navigasi di bagian atas layar (judul halaman dan tombol aksi).
- __Padding__: Memberikan jarak ruang kosong (spacing/padding) di sekeliling widget turunannya.
- __Column / Row__: Menyusun widget anak secara vertikal (Column) atau horizontal (Row).
- _Center_: Menyelaraskan widget turunannya agar berada tepat di tengah area induknya.
- __GridView__: Menampilkan daftar item dalam bentuk kisi-kisi dua dimensi (grid), digunakan untuk tombol menu.
- __Card__: Menampilkan kotak bergaya material dengan efek bayangan (elevation) dan sudut melengkung.
- __InkWell__: Menambahkan efek animasi sentuhan interaktif (ripple effect) saat sebuah area atau kartu ditekan.
- __Icon__: Menampilkan ikon grafis vector (misalnya ikon folder, sekolah, atau tambah).
- __Text__: Menampilkan string teks dengan gaya font, ukuran, dan warna tertentu.
- __SizedBox__: Memberikan ukuran kotak tetap atau spasi kosong vertikal/horizontal antar widget.
- __Drawer__: Menyediakan menu navigasi samping (sidebar) yang dapat ditarik keluar.
- __ListView__: Membuat daftar elemen yang dapat digulir (scrollable), digunakan di dalam menu navigasi atau halaman daftar.
- __ListTile__: Baris berukuran tetap standar yang berisi ikon dan teks untuk menu di dalam Drawer.
- __Form__: Wadah (container) untuk mengelompokkan dan mengelola sekumpulan widget input formulir.
- __SingleChildScrollView__: Membuat konten di dalam formulir dapat digulir, mencegah error overflow saat papan ketik (keyboard) HP muncul.
- __TextFormField__: Kotak masukan teks interaktif yang dilengkapi validasi input.
- __DropdownButtonFormField__: Menu dropdown pilihan kategori yang terintegrasi dengan sistem formulir.
- __ElevatedButton__: Tombol aksi utama berbentuk terangkat untuk mengirimkan data formulir.
- __AlertDialog__: Jendela sembul (popup dialog) interaktif untuk menampilkan pesan sukses dan ringkasan data yang diisi.
- __TextButton__: Tombol teks sederhana yang biasa digunakan untuk aksi penutup pada dialog (misalnya tombol "OK").

3. MaterialApp berfungsi sebagai pembungkus utama yang menginisialisasi pustaka desain Material Design dari Google. Karena hampir semua komponen visual di Flutter bergantung pada sistem desain Material (seperti warna tema, teks standar, dan transisi halaman). Dengan menaruhkan MaterialApp pada root widget, semua widget akan mengimplementasikan desain dari Google ini.

4. Stateless widget merupakan widget yang bersifat statis (immutable). Artinya, tampilannya tidak akan berubah secara dinamis berdasarkan interaksi pengguna atau data internal setelah dirender. Sedangkan, Stateful widget merupakan widget yang bersifat dinamis karena memiliki objek State terpisah. Widget ini dapat memperbarui tampilannya secara langsung (re-render) ketika ada perubahan data atau interaksi pengguna (misalnya saat mengetik di form, mengubah nilai dropdown, atau menambah item). Gunakan stateless widget untuk bagian-bagian yang bersifat statis (tidak ada perubahan/penambahan data) dan gunakan stateful widget jika terdapat perubahan state seperti halaman forms.

5. BuildContext merupakan sebuah objek yang merepresentasikan lokasi widget di dalam pohon widget (widget tree). BuildContext penting karena berfungsi sebagai "peta" bagi Flutter untuk mengetahui posisi relatif suatu widget terhadap induk-induknya. Tanpa konteks ini, widget tidak dapat mencari tema (Theme.of(context)), bernavigasi (Navigator.push(context, ...)), atau memunculkan snackbar/dialog, etc. Setiap metode build(BuildContext context) menerima parameter ini secara otomatis dari kerangka kerja Flutter, yang kemudian diteruskan ke widget anak atau fungsi pendukung ketika kita ingin memanggil fungsi-fungsi navigasi atau memanipulasi tampilan.

6. Memasukkan perubahan kode yang baru ke dalam Virtual Machine yang sedang berjalan tanpa kehilangan status aplikasi saat ini. Sedangkan, hot restart memulai ulang aplikasi dari awal secara penuh. Kita perlu menggunakan hot restart jika terdapat perubahan yang sangat besar seperti perubahan global variabel, perubahan struktur aset, etc.


#### Pernyataan Penggunaan AI

Saya menggunakan bantuan AI dalam pengerjaan Tugas 7 ini, lebih tepatnya saya menggunakan AI Gemini dalam pengerjaan Tutorial 8 untuk persiapan Tugas 7 ini.

Proses saya mengerjakan Tugas ini:

1. Dalam pengerjaan Tutorial 8, saya menggunakan AI dalam memahami specs laptop saya dalam percobaan emulator (Ini sebelum saya mengetahui bahwa emulator bisa di web, jadi saya mengira harus di IDE atau di handphone menggunakan Dev Mode)
[Link Chat](https://share.gemini.google/yOZrAWL2bwML)

2. Selain itu, saya lanjutkan mengikuti langkah-langkah pada Tutorial 8 seperti biasa.

3. Kemudian, saya lanjut mengerjakan Tugas 7, saya mengimplementasikan halaman-halaman dari section-section portfolio saya seperti Education, Experience, etc. dan saya siapkan placeholder untuk logika navigasi pada page tsb.

4. Kemudian, saya mengimpelemtasikan background color pada setiap button section pada menu.dart dan juga mengimplementasikan SnackBar button.

5. Kemudian, saya selesaikan pengerjaan Tugas 7 dengan mengisi README.md ini.