SET SQL_SAFE_UPDATES = 0;

SELECT * FROM `history_s&p`.vv_clean;
CREATE TABLE vv_clean_MAR08_DEC19 AS
SELECT *
FROM vv_clean;

DELETE FROM vv_clean_MAR08_DEC19
WHERE Date < '2008-03-01' or date > '2019-12-31';

SELECT * FROM `history_s&p`.vb_clean;
CREATE TABLE vb_clean_MAR08_DEC19 AS
SELECT *
FROM vb_clean;

DELETE FROM vb_clean_MAR08_DEC19
WHERE Date < '2008-03-01' or date > '2019-12-31';

SELECT * FROM `history_s&p`.rsp_clean;
CREATE TABLE rsp_clean_MAR08_DEC19 AS
SELECT *
FROM rsp_clean;

DELETE FROM rsp_clean_MAR08_DEC19
WHERE Date < '2008-03-01' or date > '2019-12-31';

SELECT * FROM `history_s&p`.spx_clean;
CREATE TABLE spx_clean_MAR08_DEC19 AS
SELECT *
FROM spx_clean;

DELETE FROM spx_clean_MAR08_DEC19
WHERE Date < '2008-03-01' or date > '2019-12-31';