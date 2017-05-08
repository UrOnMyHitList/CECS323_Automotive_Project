/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Elena
 * Created: May 7, 2017
 */

INSERT INTO PERSON( PERSONID, FIRSTNAME,  LASTNAME, EMAIL,  PHONENUMBER) VALUES
---CUSTOMERS----
('C000', 'Catherine', 'Beck', 'catherinebeck@gmail.com', '202-555-0124'),
('C001', 'James', 'Erickson', 'jameserikson@gmail.com', '202-555-0183'),
('C002', 'Josephine', 'Tran', 'josephinetran@gmail.com', '202-555-0174'),
('C003', 'Wilma', 'Allison', 'wilmaallison@gmail.com', '202-555-0156'),
('C004', 'Marta', 'Rose', 'martarose@gmail.com', '410-555-0112'),
('C005', 'Kara', 'Roy', 'kararoy@gmail.com', '410-555-0106'),
('C006', 'Neil', 'Kelly', 'neilkelly@gmail.com', '410-555-0185'),
('C007', 'Terry', 'Gibbs', 'terrygibbs@gmail.com','410-555-0176'),
('C008', 'Rudy', 'Dennis', 'rudydennis@gmail.com', '410-555-0161'),
('C009', 'Leroy', 'Adams', 'leroyadams@gmail.com', '410-555-0151'),

---EMPLOYEES----
('E011', 'Timmy', 'Price', 'timmyprice@gmail.com', '617-555-0183'),
('E012', 'Trevor', 'Stone', 'trevorstone@gmail.com', '617-555-0126'),
('E013', 'Michelle', 'Rodriguez', 'michellerodriguez@gmail.com', '617-555-0199'),
('E014', 'Brendan', 'Sanchez', 'brendansanchez@gmail.com', '617-555-0151' ),
('E015', 'Bill', 'Brock', 'billbrock@gmail.com', '617-555-0121'),
('E016', 'Tyrone', 'Fitzgerald', 'tyronefitzgerald@gmail.com', '617-555-0100'),
('E017', 'Steven', 'Figueroa', 'stevenfigueroa@gmail.com', '775-555-0170' ),
('E018', 'Scott', 'Sandoval', 'scottsandoval@gmail.com','775-555-0139'),
('E019','Mark', 'Horton', 'markhorton@gmail.com', '775-555-0129'),
('E020', 'Otis', 'Jimenez', 'otisjimenez@gmail.com', '775-555-0195');


INSERT INTO CUSTOMER( CUSTOMERID, CUSTOMERTYPE, REFERREDBY, EMAIL, CUSTOMERLEVEL, TOTALSPENT) VALUES
('C000', 'individual', 'C001', 'catherinebeck@gmail.com', 'premier', 1200),
('C001', 'individual', 'C002', 'jameserikson@gmail.com', 'premier', 1000),
('C002', 'individual', 'C003', 'josephinetran@gmail.com', 'premier', 1100),
('C003', 'individual', 'C004', 'wilmaallison@gmail.com', 'steady', 200),
('C004', 'individual', 'C005',  'martarose@gmail.com', 'steady', 200),
('C005', 'corporation', 'C006', 'kararoy@gmail.com', 'steady', 200),
('C006', 'corporation', 'C007','neilkelly@gmail.com', 'steady', 200),
('C007', 'corporation', 'C008', 'terrygibbs@gmail.com', 'prospective', 200),
('C008', 'corporation', 'C009', 'rudydennis@gmail.com', 'prospective', 200),
('C009', 'corporation', 'C010', 'leroyadams@gmail.com', 'prospective', 200);

INSERT INTO STEADY (CUSTOMERID, LOYALTYPOINTS, ANNUALTOTAL ) VALUES
('C003', '50', '500'),
('C004', '20', '1000'),
('C005', '30', '500'),
('C006', '40', '600');

--------NOT COMPLETED---------
INSERT INTO PREMIER (CUSTOMERID, MONTHLYFEE,  BONUS ) VALUES
('C000', 200, ''),
('C001', 200, ''), 
('C002', 200, '');

INSERT INTO PROSPECTIVE (CUSTOMERID, CONTACTATTEMPTS) VALUES
('C007', 2), 
('C008', 1),
('C009', 3);

INSERT INTO MECHANIC (EMPLOYEEID) VALUES
('E011'),
('E012'),
('E013'),
('E014'),
('E015'),
('E016'),
('E017'),
('E018'),
('E019'),
('E020');










