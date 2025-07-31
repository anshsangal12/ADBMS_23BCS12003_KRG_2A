CREATE TABLE Year_tbl (
    ID INT,
    YEAR INT,
    NPV INT
);

-- Create Queries table (requested values)
CREATE TABLE Queries (
    ID INT,
    YEAR INT
);

-- Insert data into Year_tbl
INSERT INTO Year_tbl (ID, YEAR, NPV)
VALUES
(1, 2018, 100),
(7, 2020, 30),
(13, 2019, 40),
(1, 2019, 113),
(2, 2008, 121),
(3, 2009, 12),
(11, 2020, 99),
(7, 2019, 0);

-- Insert data into Queries
INSERT INTO Queries (ID, YEAR)
VALUES
(1, 2019),
(2, 2008),
(3, 2009),
(7, 2018),
(7, 2019),
(7, 2020),
(13, 2019);

SELECT A.ID, A.YEAR, ISNULL(NPV,0) AS [NPV]
FROM YEAR_TBL AS A
LEFT OUTER JOIN
QUERIES AS B
ON
A.ID = B.ID
AND
A.YEAR = B.YEAR
ORDER BY ID ASC;

---175
