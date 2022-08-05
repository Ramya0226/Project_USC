/*///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////*/

/*					Data Base Used : LIVE SQL Oracle

Q4.The management would like stats, for a given period (between start, end dates), on the following: number of scans, number of tests, number of employees who self-reported symptoms, number of positive cases. Write queries to output these.

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////*/


/* Number of Scans */

SELECT count(Scan_ID)
FROM Scanning
WHERE Scan_Date BETWEEN DATE '2021-10-09' AND DATE '2021-10-11';


/*  number of tests */

SELECT count(Test_ID)
FROM Covid_Test
WHERE Test_Date BETWEEN DATE '2021-10-09' AND DATE '2021-10-11';


/* number of employees who self-reported symptoms */

SELECT count(SelfReport_ID)
FROM Self_Report
WHERE SelfReport_Date BETWEEN DATE '2021-10-09' AND DATE '2021-10-11';


/*  number of positive cases */

SELECT count(Test_ID)
FROM Covid_Test
WHERE Test_Date BETWEEN DATE '2021-10-09' AND DATE '2021-10-11' AND Test_Result='Positive';