# Buat program
# ================================================
# PROGRAM PEMANTAUAN KONSUMSI AIR HARIAN
# ================================================

# Deskripsi:
# Program ini digunakan oleh pengguna untuk mencatat dan mengevaluasi jumlah air
# yang dikonsumsi setiap hari dalam periode pemantauan tertentu.
# Program meminta input pengguna dan mengevaluasi konsumsi air harian berdasarkan target.

# Fitur program:
# 1. Meminta input:
#    - Nama pengguna
#    - Target konsumsi air per hari (liter)
#    - Jumlah hari pemantauan

# 2. Untuk setiap hari:
#    - Meminta input konsumsi air (liter)
#    - Jika konsumsi == 0:
#        - Cetak "Hari ini kamu lupa minum, lanjut besok."
#        - Gunakan `continue` untuk melanjutkan ke hari berikutnya
#    - Jika konsumsi > 5:
#        - Cetak "Terlalu banyak konsumsi! Program dihentikan."
#        - Gunakan `break` untuk menghentikan program
#    - Jika konsumsi valid (antara 0 dan 5 liter):
#        - Jika konsumsi >= target → Cetak "Target tercapai!"
#        - Jika konsumsi < target  → Cetak "Kurang minum."

# 3. Setelah loop selesai:
#    - Hitung total konsumsi air dari hari-hari yang valid
#    - Hitung rata-rata konsumsi harian dari hari-hari valid

# 4. Tampilkan laporan ringkas (summary report) berisi:
#    - Nama pengguna
#    - Jumlah hari terpantau valid
#    - Total konsumsi air
#    - Rata-rata konsumsi per hari

# Catatan penting:
# Tidak boleh menggunakan list, tuple, atau tipe data koleksi lainnya.
# Materi terbatas pada: variabel, input, tipe data dasar, perhitungan, loop, if, break, continue


"""Contoh output yang diharapkan

=== Pemantauan Konsumsi Air Harian ===

Masukkan nama: Rina
Target konsumsi per hari (liter): 2
Jumlah hari pemantauan: 3

Hari ke-1
Masukkan konsumsi air hari ini: 2.5
Target tercapai!

Hari ke-2
Masukkan konsumsi air hari ini: 0
Hari ini kamu lupa minum, lanjut besok.

Hari ke-3
Masukkan konsumsi air hari ini: 6
Terlalu banyak konsumsi! Program dihentikan.

=== Summary Report ===
Nama: Rina
Jumlah hari terpantau: 2
Total konsumsi air: 4.0 liter
Rata-rata konsumsi: 2.0 liter/hari
"""

# Buat kode anda disini

print("=== Pemantauan Konsumsi Air Harian ===")
print()

# Input data pengguna
nama = input("Masukkan nama: ")
target = float(input("Target konsumsi per hari (liter): "))
jumlah_hari = int(input("Jumlah hari pemantauan: "))

print()

# Inisialisasi variabel untuk tracking
hari = 1
total_konsumsi = 0
hari_valid = 0

# Loop untuk setiap hari pemantauan
while hari <= jumlah_hari:
    print(f"Hari ke-{hari}")
    konsumsi = float(input("Masukkan konsumsi air hari ini: "))
    
    # Jika konsumsi == 0, lupa minum
    if konsumsi == 0:
        print("Hari ini kamu lupa minum, lanjut besok.")
        print()
        hari += 1
        continue
    
    # Jika konsumsi > 5, terlalu banyak
    if konsumsi > 5:
        print("Terlalu banyak konsumsi! Program dihentikan.")
        print()
        break
    
    # Jika konsumsi valid (antara 0 dan 5 liter)
    if konsumsi >= target:
        print("Target tercapai!")
    else:
        print("Kurang minum.")
    
    print()
    
    # Akumulasi data untuk hari valid
    total_konsumsi += konsumsi
    hari_valid += 1
    hari += 1

# Tampilkan summary report
print("=== Summary Report ===")
print(f"Nama: {nama}")
print(f"Jumlah hari terpantau: {hari_valid}")
print(f"Total konsumsi air: {total_konsumsi} liter")
if hari_valid > 0:
    rata_rata = total_konsumsi / hari_valid
    print(f"Rata-rata konsumsi: {rata_rata} liter/hari")
else:
    print("Rata-rata konsumsi: 0 liter/hari")
