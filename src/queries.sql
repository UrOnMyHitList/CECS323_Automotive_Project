/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Elena
 * Created: May 4, 2017
 */

-- QUERIES
-- 1. List the customers. For each customer, indicate which category he or she falls into, and
--    his or her contact information. If you have more than one independent categorization of
--    customers, please indicate which category the customer falls into for all of the
--    categorizations.

SELECT customerID, firstName, lastName, email, phoneNumber, customerType, customerLevel
FROM CUSTOMER 
INNER JOIN PERSON ON CUSTOMER.customerID=PERSON.personID;

-- 2. For each service visit, list the total cost to the customer for that visit.
SELECT customerID, serviceTech, "DATE", packageCost 
FROM SERVICEVISIT 
INNER JOIN SERVICEPACKAGE USING (packageCode);

-- 3. List the top three customers in terms of their net spending for the past two years, and the
--    total that they have spent in that period.
SELECT customerID, firstName, lastName, (SELECT packageCost FROM) 

-- 4. Find all of the mechanics who have three or more skills.
SELECT employeeID, firstName, lastName, COUNT(titleOfSkill) AS "Number of Skills"
FROM EMPLOYEE INNER JOIN PERSON ON EMPLOYEE.employeeID=PERSON.personID
RIGHT OUTER JOIN SKILL EMPLOYEE.employeeID=SKILL.employeeID
GROUP BY (employeeID) HAVING COUNT(titleOfSkill) >= 3;

-- 5. Find all of the mechanics who have three or more skills in common.
-- 5a. Please give the name of each of the two mechanics sharing 3 or more skills.
-- 5b. Please make sure that any given pair of mechanics only shows up once.


-- 6. For each maintenance package, list the total cost of the maintenance package, as well
--    as a list of all of the maintenance items within that package.
SELECT packageCode, serviceName
FROM SERVICEPACKAGE NATURAL JOIN SERVICEITEM
GROUP BY (packageCode);

-- 7. Find all of those mechanics who have one or more maintenance items that they lacked
--    one or more of the necessary skills.


-- 8. List the customers, sorted by the number of loyalty points that they have, from largest to
--    smallest.
SELECT customerID, firstName, lastName, loyaltyPoints
FROM PERSON
INNER JOIN CUSTOMER ON PERSON.personID=CUSTOMER.customerID
INNER JOIN STEADY ON PERSON.personID=STEADY.customerID
ORDER BY loyaltyPoints DESC;

-- 9. List the premier customers and the difference between what they have paid in the past
--    year, versus the services that they actually used during that same time. List from the
--    customers with the largest difference to the smallest.
SELECT customerID, firstName, lastName, ((CALCULATE MONTHLY FEE) * 12) AS "Monthly Fee", 
(SELECT SUM(packageCost) FROM (SELECT DISTINCT customerID, ServiceTech, "DATE" FROM SERVICEVISIT NATURAL JOIN SERVICEPACKAGE)) AS "Total Cost"
ORDER BY ("Monthly Fee" - "Total Cost") DESC;

-- 10. Report on the steady customers based on the net profit that we have made from them
--     over the past year, and the dollar amount of that profit, in order from the greatest to the
--     least.


-- 11. List the three premier customers who have paid Dave’s Automotive the greatest amount
--     in the past year, and the sum of their payments over that period. Be sure to take into
--     account any discounts that they have earned by referring prospective customers.


-- 12. List the five model, make, and year that have caused the most visits on average to
--     Dave’s automotive per vehicle in the past three years, along with the average number
--     of visits per vehicle.


-- 13. Find the mechanic who is mentoring the most other mechanics. List the skills that the
--     mechanic is passing along to the other mechanics.

-- 14. Find the three skills that have the fewest mechanics who have those skills.
SELECT 3 titleOfSkill, COUNT(titleOfSkill)
FROM

-- 15. List the employees who are both service technicians as well as mechanics.
-- **** This will return 0 results ****
SELECT employeeID, firstName, lastName
FROM PERSON INNER JOIN EMPLOYEE ON PERSON.personID=EMPLOYEE.employeeID
WHERE title='Service Technician'
UNION
SELECT employeeID, firstName, lastName
FROM PERSON INNER JOIN EMPLOYEE ON PERSON.personID=EMPLOYEE.employeeID
WHERE title='Mechanic'

-- 16. Three additional queries that demonstrate the five additional business rules. Feel free to
--     create additional views to support these queries if you so desire.

-- 16a. 

-- 16b.  

-- 16c.
