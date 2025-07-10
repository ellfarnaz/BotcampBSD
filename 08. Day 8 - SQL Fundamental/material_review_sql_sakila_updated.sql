
-- ============================================================
-- Database: Sakila
-- ============================================================

USE sakila;

-- ===============================
-- STRING PATTERNS AND RANGES
-- ===============================
-- Tujuan: Menemukan pola string atau data dalam rentang tertentu
-- LIKE: Mencari pola string
-- % = 0 atau lebih karakter
-- _ = 1 karakter

-- BETWEEN: Memfilter nilai dalam rentang tertentu

-- Menampilkan customer yang memiliki nama belakang berawalan huruf S dan memiliki ID antara 100 - 200
SELECT customer_id, first_name, last_name
FROM customer
WHERE last_name LIKE 'S%'        -- Nama belakang diawali huruf S, karakter S diikuti oleh 0 atau lebih karakter
  AND customer_id BETWEEN 100 AND 120;  -- Customer ID antara 100-120, 100 and 120 inclusive 


-- ===============================
-- CONDITIONALS: IF & CASE
-- ===============================
-- Tujuan: Menggunakan logika kondisional dalam SQL
-- CASE WHEN digunakan untuk membuat kategori atau logika bercabang

-- Kategorisasi film berdasarkan durasi
-- * short -> length <= 60
-- * medium -> length <= 120
-- * Long -> length > 120
SELECT title, length,
    CASE 
        WHEN length <= 60 THEN 'Short'
        WHEN length BETWEEN 61 AND 120 THEN 'Medium'
        ELSE 'Long'
    END AS duration_category
FROM film
ORDER BY length DESC;

-- Menggunakan IF
-- IF(kondisi, "nilai benar", "nilai salah")
-- SELECT 
--     title, 
--     length,
--     IF(length <= 60, 'Short',
--         IF(length <= 120, 'Medium', 'Long')
--     ) AS duration_category
-- FROM film
-- ORDER BY length DESC;


-- CASE juga bisa digunakan dalam SELECT dan GROUP BY
SELECT 
    COUNT(*) AS total_films
FROM film
GROUP BY 
    CASE 
        WHEN rental_duration <= 2 THEN 'Cepat'
        WHEN rental_duration <= 5 THEN 'Sedang'
        ELSE 'Lama'
    END;


-- ===============================
-- SORTING RESULT SETS
-- ===============================
-- Tujuan: Mengurutkan hasil berdasarkan kolom tertentu
-- ORDER BY ASC/DESC digunakan untuk sorting

-- Urutkan film berdasarkan durasi dari yang terpanjang
SELECT film_id, title, length
FROM film
ORDER BY length DESC;

-- Urutkan customer berdasarkan tanggal terakhir update
SELECT customer_id, first_name, last_name, last_update
FROM customer
ORDER BY last_update DESC;

-- ===============================
-- GROUPING RESULT SETS
-- ===============================
-- Tujuan: Mengelompokkan data dan menghitung statistik
-- GROUP BY untuk agregasi, 
-- HAVING untuk filter hasil agregasi

-- HAVING digunakan untuk menyaring hasil agregasi setelah GROUP BY.
-- WHERE tidak bisa digunakan untuk memfilter hasil dari fungsi agregasi seperti COUNT() atau SUM()


-- Hitung jumlah customer per kota
SELECT address.city_id, COUNT(customer.customer_id) AS total_customers
FROM customer
JOIN address ON customer.address_id = address.address_id
GROUP BY address.city_id
ORDER BY total_customers DESC;

-- Filter hanya kota dengan lebih dari 1 customer
SELECT address.city_id, COUNT(customer.customer_id) AS total_customers
FROM customer
JOIN address ON customer.address_id = address.address_id
GROUP BY address.city_id
HAVING total_customers > 1;

-- ===============================
-- BUILT-IN FUNCTIONS
-- ===============================
-- Tujuan: Menggunakan fungsi bawaan SQL untuk manipulasi data

-- Menampilkan judul, panjang judul, judul dengan huruf non-kapital
-- Filter hanya data yang memiliki panjang judul lebih 15 karakter
-- Gunakan LENGTH dan UPPER pada judul film
SELECT title, LENGTH(title) AS title_length, LOWER(title) AS lowercase_title
FROM film
WHERE LENGTH(title) > 15
ORDER BY title_length DESC;

-- Gunakan ROUND untuk membulatkan nilai transaksi
SELECT payment_id, amount, ROUND(amount, 0) AS rounded_amount
FROM payment
WHERE amount > 5;

-- ===============================
-- DATE AND TIME FUNCTIONS
-- ===============================
-- Tujuan: Mengelola data waktu, menghitung selisih tanggal

-- Hitung durasi peminjaman film
SELECT rental_id, rental_date, return_date,
       DATEDIFF(return_date, rental_date) AS duration_days,
       YEAR(rental_date) AS year_rental,
       MONTHNAME(rental_date) AS name_month_rental,
       MONTH(rental_date) AS name_rental
FROM rental
WHERE return_date IS NOT NULL
ORDER BY duration_days DESC;

-- Hitung total pembayaran pelanggan pada bulan Maret 2006
SELECT customer_id, SUM(amount) AS total_march_payment
FROM payment
WHERE payment_date BETWEEN '2006-03-01' AND '2006-03-31'
GROUP BY customer_id
ORDER BY total_march_payment DESC
LIMIT 10;

-- Tampilkan tanggal hari ini
SELECT CURDATE() AS tanggal;
SELECT NOW() as timestamp;
