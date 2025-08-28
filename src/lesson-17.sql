-- Challenge 1
ALTER TABLE Vendors ADD COLUMN vend_web TEXT;

-- Challenge 2
UPDATE Vendors
SET vend_web = 'www.' || LOWER(REPLACE(vend_name, ' ', '')) || '.com';
