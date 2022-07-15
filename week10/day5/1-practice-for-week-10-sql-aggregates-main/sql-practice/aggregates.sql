SELECT COUNT(*) FROM cats;

SELECT name, MIN(birth_year) FROM cats;

SELECT name, MAX(birth_year) FROM cats;

SELECT name, (2022 - birth_year) FROM cats;



----------
-- BONUS Step 1
----------

-- For readability of output
SELECT '----- Number of toys per cat ------';

-- Number of toys per cat
SELECT cats.name, COUNT(toys.id) AS toy_count
FROM toys
JOIN cats ON cats.id = toys.cat_id
GROUP BY toys.cat_id;

----------
-- BONUS Step 2
----------

-- For readability of output
SELECT '----- Cats "spoiled" with two or more toys ------';

-- Cats "spoiled" with two or more toys
SELECT cats.name, COUNT(toys.id) AS toy_count
FROM toys
JOIN cats ON cats.id = toys.cat_id
GROUP BY cat_id
HAVING toy_count >= 2;