SELECT toys.name FROM cats
JOIN toys ON (cats.id = toys.cat_id)
WHERE cats.name = 'Garfield';

SELECT toys.name FROM toys
WHERE toys.cat_id IN (
    SELECT id FROM cats
    WHERE birth_year = 2014
);


INSERT INTO toys (name, cat_id)
VALUES
('Pepperoni', 
    (
        SELECT id FROM cats WHERE name = 'Garfield'
    )
);

-------------------- Bonus Phase 1 --------------------

-- Multiple dynamic insert
INSERT INTO toys (name, cat_id)
SELECT 'Cat Bed', id
FROM cats
WHERE birth_year < 2013;

-- Help with debugging
SELECT "----- All toys named 'Cat Bed' and their cat -----";

-- Cat Beds and their cat (Subquery)
SELECT toys.name AS toy_name, cats.name AS cat_name
FROM toys
JOIN cats
    ON toys.cat_id = cats.id
WHERE toys.name = 'Cat Bed';

-------------------- Bonus Phase 2 --------------------

-- Backup the cats table
INSERT INTO cats_backup
SELECT * FROM cats;

-- Help with debugging
SELECT "----- cats table -----";

SELECT *
FROM cats;

-- Help with debugging
SELECT "----- cats_backup table -----";

SELECT *
FROM cats_backup;

-- Backup the toys table
INSERT INTO toys_backup
SELECT * FROM toys;

-- Help with debugging
SELECT "----- toys table -----";

SELECT *
FROM toys;

-- Help with debugging
SELECT "----- toys_backup table -----";

SELECT *
FROM toys_backup;