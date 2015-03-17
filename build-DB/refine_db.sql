/* updates with sqlalchemy are a f pain */

/* makes Z\xfcrich point to Zurich */
UPDATE job
SET location = 976
WHERE location = 449;

/* makes New York point to New York City */
UPDATE job
SET location = 173
WHERE location = 970;

/* makes NYC point to New York City */
UPDATE job
SET location = 173
WHERE location = 968;

/* makes Manhattan point to New York City */
UPDATE job
SET location = 173
WHERE location = 1007;

/* makes SF point to San Francisco */
UPDATE job
SET location = 24
WHERE location = 971;

/* makes Delhi point to New Delhi */
UPDATE job
SET location = 739
WHERE location = 960;

/* makes Padova point to Padua */
UPDATE job
SET location = 1005
WHERE location = 1006;

/* sad but true in tech lol */
UPDATE city
SET country = 'United States'
WHERE name = 'Venice';

UPDATE city
SET country = 'Hong Kong'
WHERE country = 'HK';

UPDATE city
SET country = 'China'
WHERE country LIKE '%Republic of China';

/* get rid of duplicates */
DELETE FROM job 
WHERE id NOT IN (SELECT MIN(id) FROM job GROUP BY description, location);

