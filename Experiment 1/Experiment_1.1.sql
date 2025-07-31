CREATE TABLE EMPLOYEE(
    EMPID INT PRIMARY KEY,
    ENAME VARCHAR(30),
    DEPARTMENT VARCHAR(20),
    MANAGERID INT
)

ALTER TABLE EMPLOYEE ADD CONSTRAINT FK_EMPLOYEE FOREIGN KEY(MANAGERID) REFERENCES EMPLOYEE(EMPID);



INSERT INTO EMPLOYEE(EMPID, ENAME, DEPARTMENT, MANAGERID) VALUES(1, 'ALICE', 'HR',NULL),
                                                                (2, 'BOB', 'FINANCE', 1),
                                                                (3, 'CHARLIE', 'IT', 1),
                                                                (4, 'DAVID', 'FINANCE', 2),
                                                                (5, ' EVE', 'IT', 3),
                                                                (6, 'FRANK', 'HR', 1);

SELECT E1.ENAME AS [EMPLOYEE NAME], E1.DEPARTMENT AS[EMPLOYEE DEPARTMENT], E2.ENAME AS [MANAGER NAME], E2.DEPARTMENT AS [MANAGER DEPARTMENT]
FROM EMPLOYEE AS E1
LEFT OUTER JOIN
EMPLOYEE E2
ON
E1.MANAGERID = E2.EMPID;
