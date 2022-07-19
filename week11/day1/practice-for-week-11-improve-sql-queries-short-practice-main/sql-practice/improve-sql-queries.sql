----------
-- Step 0 - Create a Query 
----------
-- Query: Select all cats that have a toy with an id of 5

    -- Your code here

    select cats.name from cat_toys
    join cats on (cats.id = cat_id)
    where toy_id = 5;

    -- SELECT cats.name, toys.id, toys.name FROM cats 
    -- JOIN cat_toys ON (cat_toys.cat_id = cats.id)
    -- JOIN toys ON (cat_toys.toy_id = toys.id)
    -- WHERE toys.id = 5;

-- Paste your results below (as a comment):




----------
-- Step 1 - Analyze the Query
----------
-- Query:

    -- Your code here
    EXPLAIN QUERY PLAN
    select cats.name from cat_toys
    join cats on (cats.id = cat_id)
    where toy_id = 5;

-- Paste your results below (as a comment):
-- QUERY PLAN
--SCAN TABLE cat_toys
--SEARCH TABLE cats USING INTEGER PRIMARY KEY (rowid=?)

-- What do your results mean?

    -- Was this a SEARCH or SCAN?


    -- What does that mean?
-- We can increase efficiency by adding an index to cat_toys



----------
-- Step 2 - Time the Query to get a baseline
----------
-- Query (to be used in the sqlite CLI):

    -- Your code here
    CREATE INDEX idx_cat_toys_toy_id ON cat_toys(toy_id);

-- Paste your results below (as a comment):
-- Run Time: real 0.002 user 0.001336 sys 0.000218



----------
-- Step 3 - Add an index and analyze how the query is executing
----------

-- Create index:

    -- Your code here

-- Analyze Query:
    -- Your code here

    -- QUERY PLAN
|--SEARCH TABLE cat_toys USING INDEX idx_cat_toys_toy_id (toy_id=?)
-- `--SEARCH TABLE cats USING INTEGER PRIMARY KEY (rowid=?)
-- Run Time: real 0.000 user 0.000114 sys 0.000097

-- Paste your results below (as a comment):


-- Analyze Results:

    -- Is the new index being applied in this query?




----------
-- Step 4 - Re-time the query using the new index
----------
-- Query (to be used in the sqlite CLI):

    -- Your code here

-- Paste your results below (as a comment):


-- Analyze Results:
    -- Are you still getting the correct query results?


    -- Did the execution time improve (decrease)?


    -- Do you see any other opportunities for making this query more efficient?


---------------------------------
-- Notes From Further Exploration
---------------------------------