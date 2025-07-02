# Python Quiz - Day 3 Fundamental Python

## Deskripsi
Repository ini berisi 3 program Python yang dibuat untuk latihan fundamental Python, khususnya penggunaan loop, conditional statements, dan input handling.

## Daftar Program

### 1. m1d3_loop_pyQuiz1.py - Program Cetak Gaji Harian Bertahap
**Tipe:** Code Completion

**Fitur:**
- Meminta input nama pegawai dan jumlah hari kerja yang direncanakan
- Untuk setiap hari, meminta input gaji harian
- Menampilkan gaji harian dan menghitung total gaji kumulatif
- Jika input gaji = 0, program berhenti menggunakan `break`
- Menampilkan total gaji akhir

**Konsep yang dipelajari:**
- Input handling dengan `input()`
- Loop `while`
- Conditional statement `if`
- Statement `break`
- String formatting
- Akumulasi nilai dalam loop

### 2. m1d3_loop_pyQuiz2.py - Rekap Gaji Mingguan Pegawai Shift
**Tipe:** Debugging

**Fitur:**
- Meminta input nama pegawai, jumlah hari kerja, dan tarif per jam
- Untuk setiap hari, meminta input jumlah jam kerja
- Logika khusus:
  - Jika jam kerja = 0 → hari libur (gunakan `continue`)
  - Jika jam kerja > 12 → overload, program berhenti (gunakan `break`)
  - Jika jam kerja > 8 tapi ≤ 12 → lembur (kelebihan jam × 1.5× tarif)
- Menghitung total gaji mingguan

**Konsep yang dipelajari:**
- Loop `while`
- Conditional statements `if-elif-else`
- Statement `continue` dan `break`
- Perhitungan matematika dalam loop
- Handling kasus khusus (libur, lembur, overload)

### 3. m1d3_loop_pyQuiz3.py - Program Pemantauan Konsumsi Air Harian
**Tipe:** Buat Program

**Fitur:**
- Meminta input nama pengguna, target konsumsi air per hari, dan jumlah hari pemantauan
- Untuk setiap hari, meminta input konsumsi air
- Logika evaluasi:
  - Jika konsumsi = 0 → lupa minum (gunakan `continue`)
  - Jika konsumsi > 5 → terlalu banyak (gunakan `break`)
  - Jika konsumsi valid → evaluasi target tercapai atau tidak
- Menampilkan summary report dengan:
  - Jumlah hari terpantau valid
  - Total konsumsi air
  - Rata-rata konsumsi per hari

**Konsep yang dipelajari:**
- Loop `while`
- Conditional statements
- Statement `continue` dan `break`
- Perhitungan rata-rata
- Tracking multiple variables dalam loop
- Summary report generation

## Cara Menjalankan Program

1. Pastikan Python sudah terinstall di sistem Anda
2. Buka terminal/command prompt
3. Navigasi ke folder program
4. Jalankan dengan perintah:
   ```bash
   python m1d3_loop_pyQuiz1.py
   python m1d3_loop_pyQuiz2.py
   python m1d3_loop_pyQuiz3.py
   ```

## Konsep Python yang Dipelajari

### Loop
- **While Loop:** Digunakan untuk iterasi berdasarkan kondisi
- **Break:** Menghentikan loop secara paksa
- **Continue:** Melanjutkan ke iterasi berikutnya

### Input Handling
- **input():** Menerima input dari user
- **Type Conversion:** `int()`, `float()` untuk konversi tipe data

### Conditional Statements
- **if-elif-else:** Pengambilan keputusan berdasarkan kondisi
- **Nested conditions:** Kondisi bersarang

### String Operations
- **String formatting:** Menggunakan f-string
- **String methods:** `.upper()`, `.title()`

### Mathematical Operations
- **Akumulasi:** Menambah nilai secara bertahap
- **Rata-rata:** Pembagian total dengan jumlah data
- **Perhitungan kompleks:** Lembur, tarif, dll

## Contoh Output

### Quiz 1 - Gaji Harian
```
=== Program Gaji Harian ===
Masukkan nama pegawai: Budi
Masukkan jumlah hari kerja yang direncanakan: 3
Selamat datang, BUDI!
Masukkan gaji harian selama bekerja.
Masukkan 0 jika ingin berhenti lebih awal.

Hari ke-1:
Masukkan gaji hari ini: 50000
Hari ke-2:
Masukkan gaji hari ini: 60000
Hari ke-3:
Masukkan gaji hari ini: 55000
Total gaji yang diterima oleh Budi adalah: Rp165000
```

### Quiz 2 - Gaji Mingguan
```
=== PROGRAM REKAP GAJI MINGGUAN v3 ===
Masukkan nama pegawai: Sari
Jumlah hari kerja minggu ini: 5
Tarif per jam (contoh: 20000): 25000
Hari ke- 1
Masukkan jumlah jam kerja: 8
Hari ke- 2
Masukkan jumlah jam kerja: 0
Hari libur. Lanjut ke hari berikutnya.
...
Total gaji minggu ini untuk SARI adalah Rp 200000
```

### Quiz 3 - Pemantauan Air
```
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
Jumlah hari terpantau: 1
Total konsumsi air: 2.5 liter
Rata-rata konsumsi: 2.5 liter/hari
```

## Catatan Penting
- Semua program menggunakan konsep fundamental Python tanpa library eksternal
- Tidak menggunakan list, tuple, atau tipe data koleksi lainnya
- Fokus pada penggunaan loop, conditional statements, dan input handling
- Program dirancang untuk pembelajaran konsep dasar Python 