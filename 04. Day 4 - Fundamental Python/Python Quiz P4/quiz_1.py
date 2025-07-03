# Diberikan data mahasiswa dalam bentuk list of tuple.
# Setiap tuple berisi: (nama, nilai)

mahasiswa = [
    ("Ani", 80),
    ("Budi", 70),
    ("Citra", 85),
    ("Dedi", 65),
    ("Eka", 90)
]

# TUGAS:
# 1. Cetak nama mahasiswa yang memiliki nilai di atas 75.
# 2. Hitung dan cetak rata-rata nilai dari semua mahasiswa.

# 1. Cetak mahasiswa dengan nilai > 75:
for nama, nilai in mahasiswa:
    if nilai > 75:
        print(nama)

# 2. Hitung rata-rata nilai mahasiswa:
total_nilai = sum([nilai for _, nilai in mahasiswa])
rata_rata = total_nilai / len(mahasiswa)
print(f"Rata-rata nilai mahasiswa: {rata_rata}")


