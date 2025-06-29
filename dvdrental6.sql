-- 1. film tablosundaki rental_rate değerlerinin ortalaması
SELECT AVG(rental_rate) FROM film;

-- 2. 'C' karakteri ile başlayan film sayısı
SELECT COUNT(*) AS c_film
FROM film 
WHERE title ILIKE 'C%';

-- 3. rental_rate 0.99 olan filmler arasında en uzun olanın dakikası
SELECT MAX(length)
FROM film 
WHERE rental_rate = 0.99;

-- 4. 150 dakikadan uzun filmlerde kaç farklı replacement_cost değeri var
SELECT COUNT(DISTINCT replacement_cost)
FROM film 
WHERE length > 150;
