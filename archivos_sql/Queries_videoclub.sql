-- 1. ¿Qué actor participa en más películas de las presentes en el videoclub?
SELECT df_actor_clean.actor_id, df_actor_clean.actor_name, COUNT(*) AS num_films

FROM df_old_hdd_clean 
LEFT JOIN df_actor_clean ON df_old_hdd_clean.actor_id = df_actor_clean.actor_id
GROUP BY df_actor_clean.actor_id, df_actor_clean.actor_name
ORDER BY num_films DESC
LIMIT 5;


-- ¿Qué películas no han sido aún alquiladas?
SELECT df_film_clean.title

FROM df_film_clean
LEFT JOIN df_inventory_clean ON df_film_clean.film_id = df_inventory_clean.film_id
WHERE df_inventory_clean.inventory_id IS NULL
LIMIT 10; -- Pongo un límite de 10 películas pero quitándolo obtenemos muchas más.


-- Y, por el contrario, ¿cuáles son las películas más alquiladas recientemente? 
SELECT df_film_clean.title, df_rental_clean.rental_date

FROM df_rental_clean
LEFT JOIN df_inventory_clean ON df_rental_clean.inventory_id = df_inventory_clean.inventory_id
LEFT JOIN df_film_clean ON df_inventory_clean.film_id = df_film_clean.film_id
ORDER BY df_rental_clean.rental_date DESC
LIMIT 10;


-- ¿Qué películas tengo disponibles en cada una de la tiendas?
SELECT df_inventory_clean.store_id, df_film_clean.title

FROM df_inventory_clean
LEFT JOIN df_film_clean ON df_inventory_clean.film_id = df_film_clean.film_id
WHERE df_inventory_clean.store_id = 2 -- Pon 1 o 2 según que tienda quieras consultar.
LIMIT 10; -- He añadido también un límite, pero pueden verse en su totalidad.


-- ¿Qué películas han generado más ingresos para el videoclub? Es decir, ¿cuáles han sido las más alquiladas?
SELECT df_film_clean.title, SUM(df_film_clean.rental_rate) AS ingresos_totales

FROM df_film_clean
LEFT JOIN df_inventory_clean ON df_film_clean.film_id = df_inventory_clean.film_id
LEFT JOIN df_rental_clean ON df_inventory_clean.inventory_id = df_rental_clean.inventory_id
GROUP BY df_film_clean.title
ORDER BY ingresos_totales DESC
LIMIT 10; -- También aquí puede prescindirse del límite.