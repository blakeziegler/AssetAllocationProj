SELECT * FROM `history_s&p`.pe_ratio;

-- Create the pe_ratio_clean table with the correct schema and correctly formatted date
CREATE TABLE pe_ratio_clean AS
SELECT 
    STR_TO_DATE(Date, '%m/%d/%Y') AS Date, 
    ROUND(value, 2) AS value
FROM pe_ratio;

-- Create the pe_ratio_total table with quarterly data
CREATE TABLE pe_ratio_total AS
SELECT 
    MIN(Date) AS Date,  -- Select the earliest date in the quarter
    value
FROM 
    pe_ratio_clean
WHERE 
    MONTH(Date) IN (1, 4, 7, 10)  -- Select only January, April, July, and October
GROUP BY
    YEAR(Date), 
    CASE  -- Determine the quarter by month
        WHEN MONTH(Date) IN (1) THEN 'Q1'
        WHEN MONTH(Date) IN (4) THEN 'Q2'
        WHEN MONTH(Date) IN (7) THEN 'Q3'
        WHEN MONTH(Date) IN (10) THEN 'Q4'
    END
ORDER BY
    Date;


