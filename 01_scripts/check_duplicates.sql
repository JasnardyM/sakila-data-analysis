SELECT 'actor' AS tabla, COUNT(*) AS duplicados
FROM actor
GROUP BY first_name, last_name
HAVING COUNT(*) > 1
UNION ALL
SELECT 'address', COUNT(*) FROM address GROUP BY address HAVING COUNT(*) > 1
UNION ALL
SELECT 'category', COUNT(*) FROM category GROUP BY name HAVING COUNT(*) > 1
UNION ALL
SELECT 'city', COUNT(*) FROM city GROUP BY city HAVING COUNT(*) > 1
UNION ALL
SELECT 'country', COUNT(*) FROM country GROUP BY country HAVING COUNT(*) > 1
UNION ALL
SELECT 'customer', COUNT(*) FROM customer GROUP BY email HAVING COUNT(*) > 1
UNION ALL
SELECT 'film', COUNT(*) FROM film GROUP BY title HAVING COUNT(*) > 1
UNION ALL
SELECT 'film_text', COUNT(*) FROM film_text GROUP BY title HAVING COUNT(*) > 1
UNION ALL
SELECT 'inventory', COUNT(*) FROM inventory GROUP BY film_id, store_id HAVING COUNT(*) > 1
UNION ALL
SELECT 'language', COUNT(*) FROM language GROUP BY name HAVING COUNT(*) > 1
UNION ALL
SELECT 'payment', COUNT(*) FROM payment GROUP BY customer_id, amount, payment_date HAVING COUNT(*) > 1
UNION ALL
SELECT 'rental', COUNT(*) FROM rental GROUP BY rental_date, inventory_id, customer_id HAVING COUNT(*) > 1
UNION ALL
SELECT 'staff', COUNT(*) FROM staff GROUP BY email HAVING COUNT(*) > 1
UNION ALL
SELECT 'store', COUNT(*) FROM store GROUP BY manager_staff_id HAVING COUNT(*) > 1;
