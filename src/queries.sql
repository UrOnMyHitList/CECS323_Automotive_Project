use cecs323og11;

-- QUERIES
-- 1. List the customers. For each customer, indicate which category he or she falls into, and
--    his or her contact information. If you have more than one independent categorization of
--    customers, please indicate which category the customer falls into for all of the
--    categorizations.

SELECT customerID, firstName, lastName, email, phoneNumber, customerType, customerLevel
FROM CUSTOMER 
INNER JOIN PERSON ON CUSTOMER.customerID=PERSON.personID;


-- 2. For each service visit, list the total cost to the customer for that visit.
SELECT CUSTOMERID, FIRSTNAME, LASTNAME, SUM(TOTALCOST)
FROM PERSON
INNER JOIN SERVICEVISIT
    ON PERSON.PERSONID=SERVICEVISIT.CUSTOMERID
GROUP BY CUSTOMERID,FIRSTNAME,LASTNAME;

-- 3. List the top three customers in terms of their net spending for the past two years, and the
--    total that they have spent in that period.
SELECT CUSTOMERID, CUSTOMERLEVEL, (SELECT FIRSTNAME FROM PERSON WHERE PERSON.PERSONID = CUSTOMER.CUSTOMERID) AS FIRSTNAME,
(SELECT LASTNAME FROM PERSON WHERE PERSON.PERSONID = CUSTOMER.CUSTOMERID) AS LASTNAME,
(SELECT SUM(TOTALCOST)FROM SERVICEVISIT WHERE SERVICEVISIT.CUSTOMERID = CUSTOMER.CUSTOMERID AND YEAR(SDATE) > (YEAR(CURRENT_DATE)-2)) 
AS TOTAL
FROM CUSTOMER
WHERE (SELECT SUM(TOTALCOST)FROM SERVICEVISIT WHERE SERVICEVISIT.CUSTOMERID = CUSTOMER.CUSTOMERID AND YEAR(SDATE) > (YEAR(CURRENT_DATE)-2)) IS NOT NULL
ORDER BY TOTAL DESC
LIMIT 3;

-- 4. Find all of the mechanics who have three or more skills.
SELECT EMPLOYEEID, FIRSTNAME, LASTNAME, COUNT(TITLEOFSKILL) AS NUMOFSKILLS FROM MASTERYLEVEL NATURAL JOIN PERSON
WHERE EMPLOYEEID = PERSONID
GROUP BY EMPLOYEEID, FIRSTNAME, LASTNAME
HAVING COUNT(TITLEOFSKILL) >= 3;

-- 5. Find all of the mechanics who have three or more skills in common.


-- 5a. Please give the name of each of the two mechanics sharing 3 or more skills.


-- 5b. Please make sure that any given pair of mechanics only shows up once.

SELECT DISTINCT E1.EMPLOYEEID,(SELECT FIRSTNAME FROM PERSON WHERE E1.EMPLOYEEID = PERSONID) AS FIRSTNAME,(SELECT LASTNAME FROM PERSON WHERE E1.EMPLOYEEID = PERSONID) AS LASTNAME,
E2.EMPLOYEEID, (SELECT FIRSTNAME FROM PERSON WHERE E2.EMPLOYEEID = PERSONID) AS FIRSTNAME, (SELECT LASTNAME FROM PERSON WHERE E2.EMPLOYEEID = PERSONID) AS LASTNAME FROM MASTERYLEVEL E1, MASTERYLEVEL E2 
WHERE E1. EMPLOYEEID IN(
SELECT EMPLOYEEID FROM MASTERYLEVEL NATURAL JOIN PERSON
WHERE EMPLOYEEID = PERSONID
GROUP BY EMPLOYEEID
HAVING COUNT(TITLEOFSKILL) >= 3) AND
E2.EMPLOYEEID IN (SELECT EMPLOYEEID FROM MASTERYLEVEL NATURAL JOIN PERSON
WHERE EMPLOYEEID = PERSONID
GROUP BY EMPLOYEEID
HAVING COUNT(TITLEOFSKILL) >= 3) AND E1.EMPLOYEEID < E2.EMPLOYEEID
AND (SELECT COUNT(TITLEOFSKILL) FROM MASTERYLEVEL WHERE E1.TITLEOFSKILL = E2.TITLEOFSKILL) >= 3;


-- 6. For each maintenance package, list the total cost of the maintenance package, as well
--    as a list of all of the maintenance items within that package.
SELECT PACKAGECODE, PACKAGECOST, SERVICENAME
FROM SERVICEPACKAGE NATURAL JOIN SERVICEITEM
WHERE SERVICEITEM.PACKAGECODE = SERVICEPACKAGE.PACKAGECODE
ORDER BY (packageCode);

--Should return none

-- 7. Find all of those mechanics who have one or more maintenance items that they lacked
--    one or more of the necessary skills.
SELECT MECHANICID FROM SERVICEINSTANCE INS INNER JOIN SERVICEITEM SI
ON INS.SERVICECODE = SI.SERVICECODE
WHERE INS.MECHANICID NOT IN (SELECT MECHANICID FROM SERVICEITEM WHERE SERVICECODE = SI.SERVICECODE
    AND MECHANICID IN(SELECT MECHANICID FROM MASTERYLEVEL WHERE TITLEOFSKILL = SI.TITLEOFSKILL)); 

-- 8. List the customers, sorted by the number of loyalty points that they have, from largest to
--    smallest.
SELECT CUSTOMERID,CUSTOMERTYPE,CUSTOMERLEVEL, LOYALTYPOINTS FROM CUSTOMER 
NATURAL JOIN STEADY
ORDER BY LOYALTYPOINTS DESC; 


-- 9. List the premier customers and the difference between what they have paid in the past
--    year, versus the services that they actually used during that same time. List from the
--    customers with the largest difference to the smallest.

SELECT CUSTOMERID, ((2017-(SELECT YEARJOINED FROM CUSTOMER WHERE PREMIER.CUSTOMERID = CUSTOMER.CUSTOMERID))*12)*MONTHLYFEE AS MONTHLYFEE,
(SELECT SUM(TOTALCOST) FROM SERVICEVISIT SV WHERE SV.CUSTOMERID = PREMIER.CUSTOMERID) AS SERVICEVISITCOST,
(((2017-(SELECT YEARJOINED FROM CUSTOMER WHERE PREMIER.CUSTOMERID = CUSTOMER.CUSTOMERID))*12)*MONTHLYFEE
 - (SELECT SUM(TOTALCOST) FROM SERVICEVISIT SV WHERE SV.CUSTOMERID = PREMIER.CUSTOMERID)) AS DIFFERENCE
FROM PREMIER
ORDER BY DIFFERENCE DESC; 


--Risky, might want to remove annual total since it is an associatian class variable
-- 10. Report on the steady customers based on the net profit that we have made from them
--     over the past year, and the dollar amount of that profit, in order from the greatest to the
--     least.
SELECT FIRSTNAME, LASTNAME, CUSTOMER.CUSTOMERID, ANNUALTOTAL AS PROFIT
FROM PERSON
INNER JOIN CUSTOMER
    ON CUSTOMER.CUSTOMERID=PERSON.PERSONID
INNER JOIN STEADY
    ON STEADY.CUSTOMERID=PERSON.PERSONID
ORDER BY ANNUALTOTAL DESC;


-- 11. List the three premier customers who have paid Dave’s Automotive the greatest amount
--     in the past year, and the sum of their payments over that period. Be sure to take into
--     account any discounts that they have earned by referring prospective customers.
SELECT CUSTOMERID, (MONTHLYFEE*12) AS SUM_PAYMENTS, BONUS FROM PREMIER NATURAL JOIN CUSTOMER
ORDER BY SUM_PAYMENTS;

-- 12. List the five model, make, and year that have caused the most visits on average to
--     Dave’s automotive per vehicle in the past three years, along with the average number
--     of visits per vehicle.

SELECT MAKE, MODEL, VYEAR, COUNT(CUSTOMERID) AS VISITS FROM VIN NATURAL JOIN VEHICLE WHERE VIN.VIN = VEHICLE.VIN
AND VEHICLE.CUSTOMERID = (
SELECT CUSTOMERID FROM SERVICEVISIT 
WHERE YEAR(SDATE) > 2014
GROUP BY CUSTOMERID
ORDER BY COUNT(CUSTOMERID) LIMIT 1);

-- 13. Find the mechanic who is mentoring the most other mechanics. List the skills that the
--     mechanic is passing along to the other mechanics.

SELECT PERSONID, FIRSTNAME, LASTNAME FROM PERSON 
WHERE PERSONID = (
SELECT MENTORID FROM MENTORSHIP 
GROUP BY MENTORID
ORDER BY COUNT(MENTORID) DESC LIMIT 1);

-- 14. Find the three skills that have the fewest mechanics who have those skills.

SELECT TITLEOFSKILL FROM MASTERYLEVEL 
GROUP BY TITLEOFSKILL
ORDER BY COUNT(TITLEOFSKILL) ASC
LIMIT 3;

SELECT TITLEOFSKILL FROM MASTERYLEVEL 
ORDER BY TITLEOFSKILL;
-- 15. List the employees who are both service technicians as well as mechanics.
-- **** This will return 0 results ****

SELECT PERSONID, FIRSTNAME, LASTNAME
FROM PERSON NATURAL JOIN MECHANIC NATURAL JOIN SERVICETECH
WHERE PERSON.PERSONID = MECHANIC.EMPLOYEEID AND PERSON.PERSONID = SERVICETECH.EMPLOYEEID;

-- 16. Three additional queries that demonstrate the five additional business rules. Feel free to
--     create additional views to support these queries if you so desire.

-- 16a. 

-- 16b.  

-- 16c.


--View

SELECT MENTORID, (SELECT FIRSTNAME FROM PERSON WHERE PERSONID = MENTORID) AS MENTORFIRSTNAME, (SELECT LASTNAME FROM PERSON WHERE PERSONID = MENTORID) AS MENTORLASTNAME,
MENTEEID, (SELECT FIRSTNAME FROM PERSON WHERE PERSONID = MENTEEID) AS MENTEEFIRSTNAME, (SELECT LASTNAME FROM PERSON WHERE PERSONID = MENTEEID) AS MENTEELASTNAME FROM MENTORSHIP
ORDER BY MENTORFIRSTNAME, MENTORLASTNAME, MENTEEFIRSTNAME, MENTEELASTNAME;