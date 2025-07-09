-- Latihan SQL Database Sakila - Semua Query
USE SAKILA;

-- Query 1: Tampilkan semua kolom dari tabel film (batasi 10 baris pertama)
SELECT * FROM film LIMIT 10;

-- Query 2: Tampilkan hanya kolom title dan release_year dari tabel film
SELECT title, release_year FROM film;

-- -- Query 3: Tampilkan 5 film dengan durasi (length) terpanjang
SELECT title, length 
FROM film 
ORDER BY length DESC 
LIMIT 5;

-- -- Query 4: Tampilkan semua film yang berdurasi lebih dari 120 menit
SELECT title, length 
FROM film 
WHERE length > 120;

-- -- Query 5: Tampilkan semua film yang termasuk dalam kategori "PG-13"
SELECT title, rating 
FROM film 
WHERE rating = 'PG-13';

-- -- Query 6: Tampilkan semua film yang dirilis pada tahun 2006
SELECT title, release_year 
FROM film 
WHERE release_year = 2006;

-- -- Query 7: Tampilkan film yang memiliki durasi antara 90 dan 100 menit
SELECT title, length 
FROM film 
WHERE length BETWEEN 90 AND 100;

-- -- Query 8: Tampilkan semua film yang memiliki rating "G", "PG", atau "PG-13"
SELECT title, rating 
FROM film 
WHERE rating IN ('G', 'PG', 'PG-13');

-- -- Query 9: Tampilkan film yang memiliki judul mengandung kata "LOVE" (tidak case-sensitive)
SELECT title 
FROM film 
WHERE title LIKE '%LOVE%';

-- -- Query 10: Tampilkan film yang belum memiliki deskripsi (nilai description kosong/null)
SELECT title, description 
FROM film 
WHERE description IS NULL OR description = ''; 