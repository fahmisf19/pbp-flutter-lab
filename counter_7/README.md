## Tugas 7
### Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
---
*Stateless widget* adalah *widget* yang statis atau tidak dapat berubah. Sedangkan, *stateful widget* adalah *widget* yang dinamis atau dapat berubah berdasarkan *user action* atau ketika terjadinya perubahan data.

###  Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
---
- MaterialApp : berfungsi untuk membuat aplikasi dengan menerapkan material design
- Scaffold : Widget utama untuk membuah sebuah halaman pada flutter
- AppBar : Widget untuk bar yang ada di atas layar
- Text : berfungsi untuk menampilkan sebuah teks
- Center : berfungsi untuk meletakkan child widget di tengah parent
- Column : berfungsi untuk meletakkan child widget dalam satu kolom.
- Container : berfungsi untuk membungkus widget lain.
- Row : berfungsi untuk meletakkan child widget dalam satu baris.
- FloatingActionButton : berfungsi untuk menampilkan button yang melayang.
- Icon : berfungsi untuk menggunakan icon yang telah disediakan.
###  Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
---
Fungsi dari `setState()` adalah untuk memberitahu *widget* bahwa ada objek yang berubah nilainya pada State, sehingga aplikasi akan memuat ulang *widget* dengan nilai yang sudah diubah. Variabel yang terdampak dengan fungsi tersebut adalah semua variabel yang ada di class tersebut, kecuali variabel const dan final.
### Jelaskan perbedaan antara const dengan final.
---
`const` adalah syntax yang digunakan ketika deklarasi variabel yang *immutable* atau nilainya bersifat eksplisit dan sudah diketahui pada saat waktu kompilasi berjalan. Sedangkan, `final` adalah syntax yang digunakan ketika deklarasi variabel yang *immutable*, tetapi tidak diharuskan memiliki nilai yang eksplisit, dan akan diinisialisasi hanya pada saat pertama kali digunakan.
### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
---
- function incrementCounter() sudah ada dari template, sehingga saya hanya menggunakannya kembali. function ini akan mengeset State dengan menambah variable counter dengan 1.
- membuat function decrementCounter() yang memiliki sifat berkebalikan dari function incrementCounter(), yang mana akan mengeset State dengan mengurangi variable counter dengan 1.
- Membuat if-else condition pada body, dengan mengecek apakah variable counter ganjil atau genap. Jika ganjil, maka text yang berada pada atas text variable counter akan berubah menjadi "GANJIL" dan warnanya biru. Sedangkan, jika genap, maka text yang berada pada atas text variable counter akan berubah menjadi "GENAP" dan warnanya merah.

## Tugas 8
###  Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.
- Navigator.push akan membuat page/rute baru, tetapi tidak menghapus rute sebelumnya, sehingga ketika dilakukan push akan terlihat seperti tumpukan layer page.
- Navigator.pushReplacement akan mengganti page saat ini dengan page baru.
### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- Drawer: berfungsi sebagai material design drawer.
- Form: berfungsi untuk membuat container untuk form fields.
- TextFormField: berfungsi sebagai form field berisi TextField.
- DropdownButton: berfungsi membauat Dropdown berupa FormField.
- Card: berfungsi membauat material design card.
- ListTile: berfungsi membuat list tile.
### Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).
- onChanged
- onSaved
- onPressed
- onTap
- onHover
- onEditingComplete
- onFieldSubmitted
### Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
Widget navigator berfungsi layaknya layar yang ditumpuk (seperti stack). Navigator menggunakan prinsip Last in, First Out (LIFO).
### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Menambahkan file drawer.dart dan mengisinya dengan tiga tombol navigasi berdasarkan soal.
2. Menuliskan drawer yang ada pada tiga file lain, dengan class Drawer yang ada pada file drawer.dart. Agar nantinya bisa menggunakan drawer tersebut.
3. Menambahkan halaman form dengan menggunakan widget Form yang berisikan TextFormField untuk input judul, nominal, dan tanggal budget, sedangkan untuk pilihan pemasukan atau pengeluaran menggunakan dropdownbutton.
4. Membuat list yang berisi map, yang isinya data-data budget yang disimpan ketika button pada halaman form ditekan.
5. Menambahkan show_form.dart yang akan menampilkan data-data budget yang telah disimpan, dengan mengimport list data dari file form.dart.

## Tugas 9
---
### Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Ya, bisa. Akan tetapi, membuat model sebelum melakukan pengambilan data JSON akan lebih baik, karena kita dapat merepresentasikan struktur data apa yang akan diterima saat melakukan pengambilan data, sehingga akan sesuai dengan *response*. Kalau sebelumnya tidak membuat model, maka perlu menyesuaikan secara manual.
### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- Expanded: berfungsi memperbesar widget child sepanjang axis dari Row/Column.
- Checkbox: berfungsi untuk membuat checkbox.
- FutureBuilder: berfungsi untuk melakukan update child berdasarkan hasil future yang diberikan.
- CircularProgressIndicator: berfungsi untuk menampilkan "loading" saat aplikasi menunggu fetch data JSON.
- InkWell: berfungsi sebagai area yang akan merespon ketika ada onTap event.
### Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.
Dengan menggunakan library http, aplikasi flutter akan melakukan HTTP GET request ke server. Lalu, server Django akan memanggil *views* yang sesuai, dan mengembalikan *response* ke flutter berupa JSON. Kemudian, flutter akan mengonversikan data JSON yang diambil ke model yang telah dibuat. Terakhir, flutter akan menjalankan FutureBuilder, dan menampilkan data JSON tersebut.
### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Refactor beberapa file ke dalam folder model, page, atau utils. Kemudian, menambahkan navigasi pada drawer yang mengarah ke halaman mywatchlist.
2. Membuat model WatchList di folder model yang digenerate dari response JSON endpoint.
3. Membuat file fetch_watchlist di folder utils, untuk melakukan pengambilan data JSON dari web service.
4. Membuat file mywatchlist di folder page yang akan menampilkan seluruh judul watchlist dengan menggunakan FutureBuilder.
5. Membuat file mywatchlist_details di folder page yang menampilkan details dari tiap judul watchlist yang dipilih. Juga menambahkan button back yang akan kembali ke halaman mywatchlist.
6. Menambahkan InkWell widget yang akan merespons ketika diketuk, dan akan mengarahkan page ke details dari judul film.
