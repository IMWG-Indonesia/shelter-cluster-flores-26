# Cara Kerja Papan Tugas

Halaman ini untuk koordinator dan petugas piket. Kalau kamu datang untuk mengerjakan tugas, cukup baca [`README.md`](README.md).

---

## Peran IM Sub-Klaster Shelter

Peran ini melekat pada hari, bukan pada nama. Selama penugasan resmi belum keluar, piket dipegang bergilir oleh siapa pun yang bersedia hari itu.

Tugas hariannya tiga:

1. Triase kolom Permintaan Masuk, kira kira lima belas menit
2. Mengumumkan tugas yang sudah siap ke grup WhatsApp
3. Menjawab pertanyaan yang masuk lewat komentar di papan

Sebutkan nama yang bertugas hari itu di grup, satu baris saja. Ini bukan formalitas. Peran yang tidak disebut siapa pemegangnya akan diasumsikan dipegang orang lain, dan akhirnya tidak dipegang siapa pun.

Lima belas menit sehari adalah beban yang wajar. Menyebarkannya ke beberapa orang membuat papan ini tidak berhenti setiap kali satu orang sibuk.

---

## Field

Ditetapkan di tingkat organisasi. Field harus diatur **visibility**-nya ke jenis tugas tertentu, kalau tidak dia tidak muncul di panel kanan. Ini yang sering bikin orang mengira fiturnya rusak.

| Field | Dipakai untuk |
|---|---|
| **Priority** | Urgent / High / Medium / Low. Pakai apa adanya. |
| **Target date** | Menggantikan baris tenggat di badan tugas, sehingga bisa disortir. |
| **Effort** | **Perkiraan jam kerja, bukan hari.** Satuan ini yang membuat kontributor berslot dua jam bisa menyaring sendiri tugas yang muat. |
| **Diminta oleh** | Field kustom, pilihan tunggal. Berguna untuk melihat dari mana permintaan sebenarnya datang, dan permintaan pihak mana yang paling sering menggantung. |

Papan dibuat di **tingkat organisasi**, bukan repo, supaya bisa menarik tugas dari beberapa aktivasi. Field organisasi tidak otomatis muncul sebagai kolom, harus ditambahkan lewat tombol `+`.

Dua tampilan yang cukup:

- **Papan** dikelompokkan menurut status, untuk kerja harian
- **Tabel** diurutkan menurut tenggat dengan saringan `tanda:`, untuk tinjauan berkala

---

## Siapa mengisi apa

Ini pembagian yang paling menentukan apakah papan ini berguna atau justru menyesatkan.

| Bagian | Diisi oleh |
|---|---|
| Pekerjaan, Tujuan, Hasil, Format, Sumber data, Diminta oleh | Pemohon |
| Target date | Pemohon |
| Effort, Priority, seluruh label | Petugas piket saat triase |
| Koreksi Effort | Pengambil tugas, saat mulai mengerjakan |

**Pemohon tidak mengisi Effort.** Dia tahu apa yang dibutuhkan dan kapan, tetapi tidak tahu berapa lama membuatnya, dan memang tidak perlu tahu. Kalau tetap ditanya, semua akan terisi angka yang sama, lalu kontributor mengambil tugas yang dikira muat dua jam padahal enam. Sekali itu terjadi, kepercayaan pada seluruh angka Effort hilang dan tidak kembali.

**Pengambil tugas mengoreksi Effort** kalau ternyata meleset, sebagai hal pertama yang dilakukan saat mengambil. Estimasi piket pun tebakan. Koreksi dari orang yang benar benar mengerjakan adalah satu satunya cara angka itu jadi akurat seiring waktu.

---

## Triase harian

Siapa saja boleh membuat tugas. Tidak ada persetujuan, tidak ada moderasi. Yang ada adalah triase ringan.

Sekali sehari, petugas piket menyisir kolom Permintaan Masuk:

1. Melengkapi Effort, Priority, dan ketiga label
2. Menambahkan `tanda:butuh-data` kalau sumbernya belum tersedia, atau `tanda:butuh-mandat` kalau datanya ada tetapi belum ada pengantar untuk memintanya
3. Menanyakan hal yang belum jelas lewat kolom komentar
4. Memindahkan tugas yang sudah lengkap ke **Prioritas Hari Ini**

Aturan turunannya satu kalimat: **kontributor hanya mengambil tugas dari Prioritas Hari Ini, tidak pernah dari kolom Permintaan Masuk.** Ini yang menjamin tidak ada orang yang mengambil tugas berisi estimasi asal asalan.

### Memeriksa antrean hambatan

`tanda:butuh-keputusan`, `tanda:butuh-data`, `tanda:butuh-mandat`, dan `tanda:menunggu-pihak-luar` adalah **antrean koordinator, bukan antrean kontributor.** Saring keempatnya setiap beberapa hari.

Kalau `tanda:butuh-mandat` menumpuk, artinya persoalannya bukan kurang tenaga IM, melainkan tim belum punya akses dan pengantar untuk meminta data ke lembaga pelaksana. Itu perlu dibawa ke pertemuan sub-klaster, bukan diselesaikan di papan.

### Menjaga isi `tanda:cepat`

Usahakan selalu ada tugas berlabel `tanda:cepat`. Kontributor baru yang membuka papan dan hanya melihat tugas berdurasi enam jam biasanya menutupnya lagi.

### Jalur mendesak

Triase harian berarti permintaan yang masuk sore hari baru siap dikerjakan besok. Untuk sebagian situasi itu terlalu lambat.

Permintaan yang benar benar mendesak tetap disampaikan lewat WhatsApp, dikerjakan lebih dulu, dan tugasnya dicatat menyusul. Mekanisme yang tidak punya jalur darurat akan dilanggar diam diam, dan sekali dilanggar tanpa akibat, seluruh disiplinnya ikut longgar.

---

## Dari percakapan ke papan, lalu kembali

Sebagian besar permintaan tidak lahir di papan. Datangnya dari grup WhatsApp, telepon, japri, atau pertemuan sub-klaster. Kalau dibiarkan berhenti di sana, papan ini akan berisi sebagian kecil saja dari pekerjaan yang sebenarnya berjalan, dan itu lebih menyesatkan daripada tidak punya papan sama sekali.

Alurnya tiga langkah:

1. **Permintaan muncul** di percakapan mana pun
2. **Disadur ke papan** dengan format baku, mencantumkan asal permintaannya
3. **Diumumkan kembali** ke grup WhatsApp beserta tautannya

Langkah ketiga yang paling sering dilewat, padahal justru itu yang membuat mekanisme ini terasa berguna bagi orang yang tidak membuka GitHub. Pemohon melihat permintaannya diterima dan tercatat. Kontributor melihat ada pekerjaan baru yang bisa diambil. Keduanya tidak perlu memantau papan untuk tahu.

### Format pengumuman tugas baru

Disalin dari tugas yang sudah dibuat, dipangkas seperlunya supaya nyaman dibaca di layar ponsel.

```
🆕 *TUGAS BARU* #1

*Apa*: Perbaikan format matriks 5W Sub-Klaster Shelter
*Untuk*: Supaya data 5W bisa dijumlahkan per kabupaten
tanpa dirapikan ulang tiap periode
*Hasil*: Berkas Excel dengan dropdown terpasang, satu
daftar aktivitas, daftar desa 7 kabupaten, dan petunjuk
pengisian
*Format*: XLSX

*Bidang*: data
*Prioritas*: Urgent
*Tenggat*: 12 September, 17.00
*Perkiraan*: 4 jam
*Pemohon*: Focal point Sub-Klaster Shelter

Ambil di sini, tulis di komentar kalau mengambilnya:
https://github.com/IMWG-Indonesia/shelter-cluster-flores-26/issues/1
```

Beberapa hal yang sengaja tidak ikut disalin:

**Sumber data** biasanya berupa beberapa tautan panjang yang membuat pesan sulit dibaca di ponsel. Cukup ada di tugasnya.

**Selesai bila** memang penting, tetapi bacaannya untuk orang yang sudah memutuskan mengambil, bukan untuk orang yang sedang menimbang. Menaruhnya di pengumuman membuat pesan terasa berat.

**Perkiraan jam kerja** justru wajib ada, karena itu satu satunya angka yang dipakai orang untuk memutuskan apakah pekerjaan ini muat di waktu luangnya. Kalau saat mengumumkan angkanya belum ada, berarti tugas itu belum ditriase dan belum siap diumumkan.

### Format pengumuman tugas selesai

Lebih pendek, dan lebih berguna dikirim menempel pada produknya.

```
✅ *SELESAI* #1 Format matriks 5W Sub-Klaster Shelter
Dikerjakan oleh: (nama)
Ditinjau oleh: (nama)
Berkas: (tautan folder kerja bersama)
```

### Format pengingat tanggal batas 5W

Dikirim menjelang tanggal batas setiap siklus, ke grup WhatsApp Sub-Klaster Shelter.

```
⏰ *BATAS PENGISIAN 5W* Periode (sebutkan)

Batas pengisian: (tanggal), pukul (jam)
Berkas: (tautan)

Yang perlu dicek sebelum mengirim:
- Satu baris untuk satu aktivitas di satu desa
- Kolom Cek Alur menampilkan OK, bukan peringatan
- Periode laporan sudah diisi

Kendala pengisian, japri saja.
```

Pengingat ini sengaja dikirim ke WhatsApp dan bukan hanya ditaruh di papan, karena sebagian besar pengisi 5W adalah lembaga pelaksana yang tidak membuka GitHub.

---

## Siapa yang mengumumkan

Pengumuman dikirim oleh petugas piket hari itu, yaitu orang yang menyisir kolom Permintaan Masuk.

Cukup sekali sehari, satu pesan, berisi semua tugas yang selesai ditriase hari itu. Mengumumkan setiap kali ada tugas baru terdengar lebih responsif, tetapi dalam praktiknya lebih sulit dijaga dan lebih cepat membuat grup jenuh.

Karena jejaring ini berjalan atas dasar kesukarelaan, akan ada hari ketika yang bertugas berhalangan dan tidak sempat mengabari. Itu wajar dan tidak perlu diperlakukan sebagai pelanggaran. Dua aturan sederhana yang menjaganya tetap berjalan:

- Siapa pun boleh mengumumkan kalau yang bertugas belum sempat. Tidak perlu izin.
- Tugas yang terlanjur diumumkan dua kali jauh lebih ringan akibatnya daripada tugas yang tidak pernah diumumkan sama sekali.

### Kapan tidak perlu diumumkan

Tidak setiap tugas layak jadi pesan di grup. Tugas yang sudah jelas siapa pengerjanya sejak awal, atau yang lahir dari percakapan yang sedang berlangsung di grup itu juga, cukup dibalas dengan tautannya saja.

Grup yang menerima pengumuman terlalu sering akan berhenti membacanya, dan saat itu terjadi, pengumuman yang benar benar butuh kontributor pun ikut terlewat.

---

## Mengundang kontributor baru

Ketika ada yang menyatakan bersedia membantu:

1. Minta nama akun GitHub-nya. Kalau belum punya, arahkan ke https://github.com/signup
2. Undang ke organisasi IMWG-Indonesia dan ke papan
3. Undang ke folder kerja bersama di Google Drive
4. Tanyakan ketersediaan waktunya, misalnya hari dan jam berapa saja
5. Arahkan ke tugas berlabel `tanda:cepat` untuk yang pertama

Langkah kelima yang paling sering dilewat. Kontributor baru yang tugas pertamanya berdurasi enam jam biasanya tidak kembali.
