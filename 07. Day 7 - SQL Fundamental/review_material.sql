-- Gunakan database world
USE world;

-- 1. Tampilkan 10 negara pertama (semua kolom)
SELECT * 
FROM country 
LIMIT 10;

-- 2. Tampilkan nama negara, benua, dan populasi
SELECT Name, Continent, Population 
FROM country;

-- 3. Tampilkan negara-negara yang berada di benua Asia
SELECT Name, Continent 
FROM country 
WHERE Continent = 'Asia';

-- 4. Tampilkan negara dengan jumlah penduduk lebih dari 100 juta
SELECT Name, Population 
FROM country 
WHERE Population > 100000000;

-- 5. Tampilkan negara-negara di Afrika dengan luas wilayah lebih dari 1 juta km²
SELECT Name, Continent, SurfaceArea 
FROM country 
WHERE Continent = 'Africa' AND SurfaceArea > 1000000;

-- 6. Tampilkan negara-negara yang memiliki harapan hidup di atas 75 tahun
SELECT Name, LifeExpectancy 
FROM country 
WHERE LifeExpectancy > 75;

-- 7. Tampilkan negara dengan bentuk pemerintahan 'Republic'
SELECT Name, GovernmentForm 
FROM country 
WHERE GovernmentForm = 'Republic';

-- 8. Tampilkan negara yang belum memiliki tahun kemerdekaan (IndepYear bernilai NULL)
SELECT Name, IndepYear 
FROM country 
WHERE IndepYear IS NULL;

-- 9. Tampilkan negara-negara yang berada di region Asia Tenggara atau Asia Timur
SELECT Name, Region 
FROM country 
WHERE Region IN ('Southeast Asia', 'Eastern Asia');

-- 10. Tampilkan negara dengan GNP antara 100000 dan 1000000
SELECT Name, GNP 
FROM country 
WHERE GNP BETWEEN 100000 AND 1000000;

-- 11. Tampilkan negara yang namanya mengandung kata 'United'
SELECT Name 
FROM country 
WHERE Name LIKE '%United%';

-- 12. Gabungkan beberapa kondisi:
-- Tampilkan negara yang berada di Eropa dan memiliki harapan hidup di atas 80 tahun
SELECT Name, Continent, LifeExpectancy 
FROM country 
WHERE Continent = 'Europe' AND LifeExpectancy > 80;
