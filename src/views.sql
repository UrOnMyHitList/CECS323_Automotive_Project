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
SELECT personID, firstName, lastName, customerType, ((SELECT (YEAR(GETDATE())) - yearJoined)
FROM PERSON INNER JOIN CUSTOMER ON PERSON.personID=CUSTOMER.customerID;


-- 2. Customer_addresses_v – for each customer, indicate whether they are an individual or a 
--    corporate account, and display all of the addresses that we are managing for that customer.
CREATE OR REPLACE VIEW Customer_addresses_v AS
SELECT personID, customerType, address, city, "STATE", zip, addressType 
FROM CUSTOMER 
INNER JOIN PERSON ON CUSTOMER.customerID=PERSON.personID
NATURAL JOIN ADDRESS
INNER JOIN ZIP ON ADDRESS.zip=ZIP.zipnumber
GROUP BY (personID)
ORDER BY personID, addressType;


-- 3. Mechanic_mentor_v – reports all of the mentor/mentee relationships at Dave’s, sorted by the 
--    name of the mentor, then the name of the mentee.
CREATE OR REPLACE VIEW Mechanic_mentor_v AS
SELECT mentor.firstName, mentor.lastName, mentee.firstName, mentee.lastName, titleOfSkill
FROM (PERSON INNER JOIN MENTORSHIP ON PERSON.personID=MENTORSHIP=mentorID) AS mentor
INNER JOIN (PERSON INNER JOIN MENTORSHIP ON PERSON.personID=MENTORSHIP.menteeID) AS mentee) USING (mentorID);


-- 4. Premier_profits_v – On a year by year basis, show the premier customer’s outlay versus what 
--    they would have been charged for the services which they received had they merely been steady customers.
CREATE OR REPLACE VIEW Premier_profits_v AS
SELECT


-- 5. Prospective_resurrection_v – List all of the prospective customers who have had three or more 
--    contacts, and for whom the most recent contact was more than a year ago.  They might be ripe 
--    for another attempt.
CREATE OR REPLACE VIEW Prospective_ressurection_v AS
SELECT