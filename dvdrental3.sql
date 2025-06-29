-- 1. country tablosunda 'A' ile başlayıp 'a' ile biten ülkeler
SELECT country 
FROM country 
WHERE country LIKE 'A%a'
ORDER BY country;

-- 2. country tablosunda en az 6 karakter ve 'n' ile biten ülkeler
SELECT country 
FROM country 
WHERE LENGTH(country) >= 6 
  AND country LIKE '%n'
ORDER BY country;

-- 3. film tablosunda en az 4 adet 'T' karakteri içeren filmler (büyük/küçük harf fark etmez)
SELECT title 
FROM film 
WHERE UPPER(title) LIKE '%T%T%T%T%'
ORDER BY title;

-- 4. film tablosunda 'C' ile başlayan, uzunluğu 90'dan büyük, rental_rate 2.99 olan filmler
SELECT * 
FROM film 
WHERE title LIKE 'C%' 
  AND length > 90 
  AND rental_rate = 2.99
ORDER BY title;
