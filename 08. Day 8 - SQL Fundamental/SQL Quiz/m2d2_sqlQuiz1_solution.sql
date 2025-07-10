-- Database: sakila
-- Tabel: film
-- Konteks: Kamu bekerja sebagai Data Analyst di perusahaan penyewaan film. Manajemen ingin memahami karakteristik film berdasarkan durasi dan rating, serta segmen film mana yang paling banyak tersedia dalam inventaris.

/* Deskripsi
Buat query SQL untuk menampilkan:
1. rating film
2. Kelompok kategori_durasi berdasarkan durasi film:
	- 'Short' untuk durasi ≤ 60 menit
	- 'Medium' untuk 61–120 menit
	- 'Long' untuk > 120 menit
3. Jumlah film (total_film) pada tiap kombinasi rating dan kategori durasi
4. Rata-rata durasi film (avg_length) per grup
5. Urutkan dari jumlah film terbanyak ke paling sedikit

!. Tanpa menggunakan JOIN, subquery, atau CTE. */

USE sakila;
SELECT 
    rating,
    CASE 
        WHEN length <= 60 THEN 'Short'
        WHEN length BETWEEN 61 AND 120 THEN 'Medium'
        ELSE 'Long'
    END AS kategori_durasi,
    COUNT(*) AS total_film,
    ROUND(AVG(length), 1) AS avg_length
FROM film
GROUP BY rating, kategori_durasi
ORDER BY total_film DESC;
