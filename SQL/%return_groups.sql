SELECT * FROM `history_s&p`.history;
-- change name of the columns from "2023" and "26.29" in table editor

-- Assuming the table name is stock_returns and it has columns Year and Yield

-- Create table for positive yields
CREATE TABLE positive_yields AS
SELECT Year, Yield
FROM history
WHERE Yield > 0;

-- Create table for negative yields
CREATE TABLE negative_yields AS
SELECT Year, Yield
FROM history
WHERE Yield < 0;

-- Query for positive yields
SELECT Year, Yield
FROM history
WHERE Yield > 0;

-- Query for negative yields
SELECT Year, Yield
FROM history
WHERE Yield < 0;


SET SQL_SAFE_UPDATES = 0;

-- Delete entries prior to 2004 from the positive_yields table
DELETE FROM positive_yields
WHERE Year < 2004;

-- Delete entries prior to 2004 from the negative_yields table
DELETE FROM negative_yields
WHERE Year < 2004;


