SELECT 'actor' AS tabla, COUNT(*) AS nulls FROM actor WHERE first_name IS NULL OR last_name IS NULL
UNION ALL SELECT 'address', COUNT(*) FROM address WHERE address IS NULL
UNION ALL SELECT 'category', COUNT(*) FROM category WHERE name IS NULL
UNION ALL SELECT 'city', COUNT(*) FROM city WHERE city IS NULL
UNION ALL SELECT 'country', COUNT(*) FROM country WHERE country IS NULL
UNION ALL SELECT 'customer', COUNT(*) FROM customer WHERE email IS NULL
UNION ALL SELECT 'film', COUNT(*) FROM film WHERE title IS NULL
UNION ALL SELECT 'film_text', COUNT(*) FROM film_text WHERE title IS NULL
UNION ALL SELECT 'inventory', COUNT(*) FROM inventory WHERE film_id IS NULL
UNION ALL SELECT 'language', COUNT(*) FROM language WHERE name IS NULL
UNION ALL SELECT 'payment', COUNT(*) FROM payment WHERE amount IS NULL
UNION ALL SELECT 'rental', COUNT(*) FROM rental WHERE rental_date IS NULL
UNION ALL SELECT 'staff', COUNT(*) FROM staff WHERE email IS NULL
UNION ALL SELECT 'store', COUNT(*) FROM store WHERE manager_staff_id IS NULL;
