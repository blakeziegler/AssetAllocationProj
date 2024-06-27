SELECT * FROM `history_s&p`.vv;

-- Create the vv_clean table with the required columns and rounded values
CREATE TABLE vv_clean AS
SELECT 
    Date, 
    ROUND(Open, 2) AS Open, 
    ROUND(Close, 2) AS Close
FROM vv;

SELECT * FROM `history_s&p`.rsp;
CREATE TABLE rsp_clean AS
SELECT 
    Date, 
    ROUND(Open, 2) AS Open, 
    ROUND(Close, 2) AS Close
FROM rsp;

SELECT * FROM `history_s&p`.spy;
CREATE TABLE spy_clean AS
SELECT 
    Date, 
    ROUND(Open, 2) AS Open, 
    ROUND(Close, 2) AS Close
FROM spy;

SELECT * FROM `history_s&p`.tlt;
CREATE TABLE tlt_clean AS
SELECT 
    Date, 
    ROUND(Open, 2) AS Open, 
    ROUND(Close, 2) AS Close
FROM tlt;

DELETE FROM vv_clean
WHERE Date < '2004-01-01';

DELETE FROM rsp_clean
WHERE Date < '2004-01-01';

DELETE FROM spy_clean
WHERE Date < '2004-01-01';

DELETE FROM tlt_clean
WHERE Date < '2004-01-01';


