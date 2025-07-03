# Diberikan daftar produk, masing-masing berupa tuple (nama_produk, harga)

produk = [
    ("Sabun", 10000),
    ("Sampo", 25000),
    ("Pasta Gigi", 15000),
    ("Tisu", 5000)
]

# 1. Buat list baru yang berisi NAMA PRODUK dalam huruf kapital semua.
# 2. Hitung total harga dari semua produk dan tampilkan.

# 1. Buat list nama produk dalam huruf kapital:
nama_produk_kapital = [nama.upper() for nama, _ in produk]
print(nama_produk_kapital)

# 2. Hitung total harga:
total_harga = sum([harga for _, harga in produk])
print(f"Total harga semua produk: {total_harga}")


