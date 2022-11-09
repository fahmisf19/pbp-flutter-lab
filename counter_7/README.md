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