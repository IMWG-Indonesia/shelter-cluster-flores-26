#!/usr/bin/env bash
# Membuat label untuk repo Sub-Klaster Shelter, Respons Gempa Flores 2026.
# Jalankan sekali saja, sebelum tugas pertama dibuat.
#
# Prasyarat: GitHub CLI terpasang dan sudah login (gh auth login).
# Pakai:  bash setup-label.sh
#
# Label tidak bisa dipindah antar repo. Kalau salah repo, ganti REPO lalu jalankan ulang.

set -euo pipefail

REPO="IMWG-Indonesia/shelter-cluster-flores-26"

# Warna per dimensi, bukan per label. Setelah terbiasa, papan bisa dibaca
# tanpa membaca teks labelnya.
WARNA_BIDANG="1D76DB"   # biru, nada dingin
WARNA_WILAYAH="BFC4C9"  # abu-abu seragam
WARNA_TANDA="D93F0B"    # oranye, nada hangat

buat() {
  gh label create "$1" --repo "$REPO" --color "$2" --description "$3" --force
}

echo "== bidang: keahlian yang dicari, satu per tugas, wajib =="
buat "bidang:gis"          "$WARNA_BIDANG" "Analisis geospasial dan produksi peta"
buat "bidang:data"         "$WARNA_BIDANG" "Pembersihan, penggabungan, dan pengolahan data tabular"
buat "bidang:mdc"          "$WARNA_BIDANG" "Perancangan formulir pendataan dan pengelolaan datanya"
buat "bidang:infografis"   "$WARNA_BIDANG" "Produk grafis statis: poster, ringkasan satu halaman, ilustrasi"
buat "bidang:dashboard"    "$WARNA_BIDANG" "Tampilan data yang bisa ditelusuri sendiri oleh pembacanya"
buat "bidang:analisis"     "$WARNA_BIDANG" "Penafsiran situasi dan kebutuhan, bukan sekadar penyajian angka"
buat "bidang:dokumentasi"  "$WARNA_BIDANG" "Metodologi, catatan sumber, panduan"

echo "== wilayah: cakupan geografis, satu per tugas, wajib =="
buat "wilayah:manggarai"        "$WARNA_WILAYAH" "Kabupaten Manggarai"
buat "wilayah:manggarai-barat"  "$WARNA_WILAYAH" "Kabupaten Manggarai Barat"
buat "wilayah:manggarai-timur"  "$WARNA_WILAYAH" "Kabupaten Manggarai Timur"
buat "wilayah:ngada"            "$WARNA_WILAYAH" "Kabupaten Ngada"
buat "wilayah:nagekeo"          "$WARNA_WILAYAH" "Kabupaten Nagekeo"
buat "wilayah:ende"             "$WARNA_WILAYAH" "Kabupaten Ende"
buat "wilayah:sikka"            "$WARNA_WILAYAH" "Kabupaten Sikka"
buat "wilayah:semua"            "$WARNA_WILAYAH" "Lintas wilayah, tujuh kabupaten terdampak"

echo "== tanda: penanda yang butuh perhatian koordinator, boleh lebih dari satu =="
buat "tanda:butuh-keputusan"     "$WARNA_TANDA" "Menunggu keputusan focal point sebelum bisa jalan"
buat "tanda:butuh-data"          "$WARNA_TANDA" "Terhambat karena sumber datanya belum ada atau belum bisa diakses"
buat "tanda:butuh-mandat"        "$WARNA_TANDA" "Datanya ada, tetapi belum ada izin atau pengantar untuk memintanya"
buat "tanda:menunggu-pihak-luar" "$WARNA_TANDA" "Menunggu jawaban dari luar jejaring, sebutkan siapa dan sejak kapan di komentar"
buat "tanda:cepat"               "$WARNA_TANDA" "Selesai di bawah dua jam, cocok untuk kontributor yang baru bergabung"
buat "tanda:sensitif"            "$WARNA_TANDA" "Menyangkut data pribadi atau daftar penerima, wajib diperiksa orang kedua"
buat "tanda:siklus-5w"           "$WARNA_TANDA" "Bagian dari siklus pelaporan 5W yang berulang setiap periode"

echo "== hapus label bawaan yang bertabrakan makna =="
for l in bug documentation enhancement duplicate invalid question wontfix "good first issue" "help wanted"; do
  gh label delete "$l" --repo "$REPO" --yes 2>/dev/null || true
done

echo
echo "Selesai. Periksa hasilnya:"
echo "  gh label list --repo $REPO --limit 40"