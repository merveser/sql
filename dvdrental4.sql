-- 1. film tablosunda replacement_cost sütunundaki farklı değerler
SELECT DISTINCT replacement_cost 
FROM film 
ORDER BY replacement_cost;

-- 2. film tablosunda replacement_cost sütunundaki farklı değer sayısı
SELECT COUNT(DISTINCT replacement_cost) AS farklı_değer_sayısı
FROM film;

-- 3. film tablosunda 'T' ile başlayıp rating 'G' olan film sayısı
SELECT COUNT(*) AS film_sayısı
FROM film 
WHERE title LIKE 'T%' 
  AND rating = 'G';

-- 4. country tablosunda 5 karakterden oluşan ülke sayısı
SELECT COUNT(*) AS ülke_sayısı
FROM country 
WHERE LENGTH(country) = 5;

-- 5. city tablosunda 'R' veya 'r' ile biten şehir sayısı
SELECT COUNT(*) AS şehir_sayısı
FROM city 
WHERE city ILIKE '%r';
