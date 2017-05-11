/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Elena
 * Created: May 9, 2017
 */

-- 1. Customer_v – for each customer, indicate his or her name as well as the customer type 
--    (prospect, steady or premier) as well as the number of years that customer has been with us.
CREATE OR REPLACE VIEW Customer_v AS
SELECT PERSONID, FIRSTNAME, LASTNAME, CUSTOMERTYPE, (YEAR(NOW()) - YEARJOINED) AS "YEARS"
FROM PERSON INNER JOIN CUSTOMER ON PERSON.PERSONID=CUSTOMER.CUSTOMERID;


-- 2. Customer_addresses_v – for each customer, indicate whether they are an individual or a 
--    corporate account, and display all of the addresses that we are managing for that customer.
CREATE VIEW Customer_addresses_v AS
SELECT PERSONID, CUSTOMERTYPE, ADDRESS, CITY, ZSTATE, ZIP, ADDRESSTYPE
FROM CUSTOMER 
INNER JOIN PERSON ON CUSTOMER.CUSTOMERID=PERSON.PERSONID
NATURAL JOIN ADDRESS
INNER JOIN ZIP ON ADDRESS.ZIP=ZIP.ZIPNUMBER
GROUP BY (PERSONID)
ORDER BY PERSONID, ADDRESSTYPE;


-- 3. Mechanic_mentor_v – reports all of the mentor/mentee relationships at Dave’s, sorted by the 
--    name of the mentor, then the name of the mentee.
CREATE OR REPLACE VIEW Mechanic_mentor_v AS
SELECT MENTOR.FIRSTNAME, MENTOR.LASTNAME, MENTEE.FIRSTNAME, MENTEE.LASTNAME, TITLEOFSKILL
FROM (PERSON INNER JOIN MENTORSHIP ON PERSON.PERSONID=MENTORSHIP=MENTORID) AS MENTOR
INNER JOIN (PERSON INNER JOIN MENTORSHIP ON PERSON.PERSONID=MENTORSHIP.MENTEEID) AS MENTEE) USING (MENTORID);


-- 4. Premier_profits_v – On a year by year basis, show the premier customer’s outlay versus what 
--    they would have been charged for the services which they received had they merely been steady customers.
CREATE OR REPLACE VIEW Premier_profits_v AS
SELECT CUSTOMERID, ((2017-(SELECT YEARJOINED FROM CUSTOMER WHERE PREMIER.CUSTOMERID = CUSTOMER.CUSTOMERID))*12)*MONTHLYFEE AS MONTHLYFEE,
(SELECT SUM(TOTALCOST) FROM SERVICEVISIT SV WHERE SV.CUSTOMERID = PREMIER.CUSTOMERID) AS SERVICEVISITCOST,
(((2017-(SELECT YEARJOINED FROM CUSTOMER WHERE PREMIER.CUSTOMERID = CUSTOMER.CUSTOMERID))*12)*MONTHLYFEE
 - (SELECT SUM(TOTALCOST) FROM SERVICEVISIT SV WHERE SV.CUSTOMERID = PREMIER.CUSTOMERID)) AS DIFFERENCE
FROM PREMIER
ORDER BY DIFFERENCE DESC; 


-- 5. Prospective_resurrection_v – List all of the prospective customers who have had three or more 
--    contacts, and for whom the most recent contact was more than a year ago.  They might be ripe 
--    for another attempt.
CREATE OR REPLACE VIEW Prospective_ressurection_v AS
SELECT PERSONID, FIRSTNAME, LASTNAME, EMAIL
FROM PERSON INNER JOIN CUSTOMER ON PERSON.PERSONID=CUSTOMER.CUSTOMERID
INNER JOIN PROSPECTIVE USING (CUSTOMERID)
WHERE CONTACTATTEMPTS >=3 AND LASTCONTACTED < (NOW() - INTERVAL 1 YEAR);