-- 1. film tablosundaki filmleri rating değerlerine göre grupla
SELECT rating, COUNT(*)
FROM film 
GROUP BY rating
ORDER BY rating;

-- 2. replacement_cost'a göre gruplandığında 50'den fazla film olan değerler
SELECT replacement_cost, COUNT(*) 
FROM film 
GROUP BY replacement_cost
HAVING COUNT(*) > 50
ORDER BY film_sayısı DESC;

-- 3. store_id değerlerine karşılık gelen müşteri sayıları
SELECT store_id, COUNT(*) 
FROM customer 
GROUP BY store_id
ORDER BY store_id;

-- 4. En fazla şehir sayısı barındıran country_id ve şehir sayısı
SELECT country_id, COUNT(*) 
FROM city 
GROUP BY country_id
ORDER BY şehir_sayısı DESC
LIMIT 1;
