-- 1. 'n' ile biten en uzun 5 film
SELECT title, length 
FROM film 
WHERE title ILIKE '%n'
ORDER BY length DESC 
LIMIT 5;

-- 2. 'n' ile biten en kısa ikinci 5 film (6, 7, 8, 9, 10. sıradakiler)
SELECT title, length 
FROM film 
WHERE title ILIKE '%n'
ORDER BY length ASC 
LIMIT 5 OFFSET 5;

-- 3. store_id=1 olan müşteriler, last_name'e göre azalan sırada ilk 4 kayıt
SELECT * 
FROM customer 
WHERE store_id = 1
ORDER BY last_name DESC 
LIMIT 4;
