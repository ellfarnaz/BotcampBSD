# === REVIEW MATERI LOOPING, BREAK, CONTINUE ===
# File ini merupakan lanjutan materi Python dasar.
# Fokus pada konsep perulangan (looping), serta kontrol alur break dan continue.

# 1. Looping Statement (Perulangan Dasar)
# Python menyediakan dua tipe perulangan: while loop dan for loop.

# 1.1 While Loop
# While digunakan untuk perulangan berdasarkan kondisi logika.
print("1.1 While Loop:")
angka = 1 
while angka <= 5:
    print("Angka ke-", angka)
    angka += 1  # Tambah nilai setiap iterasi
print()

# 1.2 For Loop dengan range()
# For digunakan saat jumlah perulangan sudah pasti.
# Fungsi range() menghasilkan urutan angka (default mulai dari 0)
print("1.2 For Loop dengan range:")
for i in range(5):  # Akan mengulang sebanyak 5 kali, dari 0 hingga 4
    print("Perulangan ke-", i + 1)
print()

# 2. Kontrol Alur Perulangan: break dan continue
# Break: Menghentikan perulangan lebih awal
# Continue: Melewati iterasi saat ini, lanjut ke berikutnya

# 2.1 Break Statement
# Contoh: Berhenti saat nilai i mencapai 3
print("2.1 Break Statement:")
i = 1
while True:
    print("Perulangan ke-", i)
    if i == 3: # kalau mencapai perulangan ke 3
        print("Dihentikan karena mencapai 3")
        break
    i += 1
print()

# 2.2 Continue Statement
# Contoh: Melewati angka tertentu (3), tapi perulangan tetap berjalan
print("2.2 Continue Statement:")
for i in range(1, 6):  # Mulai dari 1 hingga 5
    if i == 3:
        print("Lewati angka", i)
        continue
    print("Cetak angka:", i)
print()

# 2.3 Nested Looping (Perulangan Bersarang)
# Perulangan di dalam perulangan digunakan untuk membuat struktur baris-kolom atau pola.
print("2.3 Nested Looping:")
baris = 3   # jumlah baris
kolom = 5   # jumlah kolom

# Perulangan luar (mengatur baris)
for i in range(1, baris + 1): 
    print(f"Baris {i}:", end=" ")
    # Perulangan dalam (mengatur isi baris)
    for j in range(1, kolom + 1):
        print(j, end=" ")  # Cetak angka tanpa ganti baris
    print()  # Ganti baris setelah 1 baris selesai
