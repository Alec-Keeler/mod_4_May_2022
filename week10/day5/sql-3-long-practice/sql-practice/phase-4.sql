-- Give "Red" the cat one of every toy the other cats have
--!!START

-- SOLUTION
INSERT INTO toys
(name, cat_id)
SELECT name,
        (
             SELECT id AS cat_id
             FROM cats
             WHERE name = 'Red'
         )
FROM toys;
--!!END

-- Query spoiled cats reporting the most spoiled first
--!!START

-- For debugging
SELECT '----- Spoiled Cats -----';

-- SOLUTION
SELECT cats.name, COUNT(toys.id) AS toy_count
FROM cats
JOIN toys ON toys.cat_id = cats.id
GROUP BY cats.id
HAVING toy_count >= 2
ORDER BY toy_count DESC;
--!!END
