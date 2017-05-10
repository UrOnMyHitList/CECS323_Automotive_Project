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

---EMPLOYEES: MECHANIC----
('M011', 'Timmy', 'Price', 'timmyprice@gmail.com', '617-555-0183'),
('M012', 'Trevor', 'Stone', 'trevorstone@gmail.com', '617-555-0126'),
('M013', 'Michelle', 'Rodriguez', 'michellerodriguez@gmail.com', '617-555-0199'),
('M014', 'Brendan', 'Sanchez', 'brendansanchez@gmail.com', '617-555-0151' ),
('M015', 'Bill', 'Brock', 'billbrock@gmail.com', '617-555-0121'),
('M016', 'Tyrone', 'Fitzgerald', 'tyronefitzgerald@gmail.com', '617-555-0100'),
('M017', 'Steven', 'Figueroa', 'stevenfigueroa@gmail.com', '775-555-0170' ),
('M018', 'Scott', 'Sandoval', 'scottsandoval@gmail.com','775-555-0139'),
('M019','Mark', 'Horton', 'markhorton@gmail.com', '775-555-0129'),
('M020', 'Otis', 'Jimenez', 'otisjimenez@gmail.com', '775-555-0195'),

---EMPLOYEES: SERVICETECH----
('S021', 'Theo', 'Miles', 'theomiles@gmail.com', '717-555-0149'),
('S022', 'Fred', 'Cole', 'fredcole@gmail.com', '717-555-0130'),
('S023', 'Ian', 'Morton', 'ianmorton@gmail.com', '717-555-0118'),
('S024', 'Allan', 'Lloyd', 'allanlloyd@gmail.com', '717-555-0140' ),
('S025', 'Darrell', 'Abbott', 'darrellabbott@gmail.com', '717-555-0141'),
('S026', 'Derek', 'Wells', 'derekwells@gmail.com', '717-555-0108'),
('S027', 'Cesar', 'Chandler', 'cesarchandler@gmail.com', '717-555-0138' ),
('S028', 'Emanuel', 'Yates', 'emanuelyates@gmail.com','717-555-0138'),
('S029','Daniel', 'Jones', 'danieljones@gmail.com', '717-555-0137'),
('S030', 'Gordon', 'Owens', 'gordonowens@gmail.com', '717-555-0181');


--------UPDATE TOTAL SPENT--------
INSERT INTO CUSTOMER( CUSTOMERID, CUSTOMERTYPE, REFERREDBY, CUSTOMERLEVEL, TOTALSPENT) VALUES
('C000', 'individual', 'C001', 'premier', 1200),
('C001', 'individual', 'C002', 'premier', 1000),
('C002', 'individual', 'C003',  'premier', 1100),
('C003', 'individual', 'C004',  'steady', 200),
('C004', 'individual', 'C005',  'steady', 200),
('C005', 'corporation', 'C006', 'steady', 200),
('C006', 'corporation', 'C007', 'steady', 200),
('C007', 'corporation', 'C008',  'prospective', 200),
('C008', 'corporation', 'C009',  'prospective', 200),
('C009', 'corporation', 'C010',  'prospective', 200);

INSERT INTO STEADY (CUSTOMERID, LOYALTYPOINTS, ANNUALTOTAL ) VALUES
('C003', '50', 500),
('C004', '20', 1000),
('C005', '30', 500),
('C006', '40', 600);

--------NOT COMPLETED---------
INSERT INTO PREMIER (CUSTOMERID, MONTHLYFEE,  BONUS ) VALUES
('C000', 200, ''),
('C001', 200, ''), 
('C002', 200, '');

INSERT INTO PROSPECTIVE (CUSTOMERID, CONTACTATTEMPTS) VALUES
('C007', 2), 
('C008', 1),
('C009', 3);

INSERT INTO VIN(VIN,MAKE, MODEL, "year") VALUES
( '133DSS132456ASDFG', 'ALFA ROMEO','Giulietta', 1999),
( '789FGH132456QWERT', 'AUDI','A3',2018),
( '741ASD987665ASDFG', 'BMW', 'X1', 1972),
( '963NJI951753PLOKH', 'CITROEN UK LTD','Grand C4 Picasso', 1984),
( '456ASD986532SSSSD', 'FORD','Kuga', 1955),
( '987POO123132CCCFT', 'HONDA','Jazz', 1982),
( '794CCC454578SSSSS','MITSUBISHI','Outlander', 1985),
( '988BHU465987CJCJC','SKODA','Yeti Outdoor', 2002),
( '845CCC828288ALOLA','SsangYong Motor UK Ltd','Korando', 2011),
( '929MAR10200CCKART','SUZUKI','Vitara', 2000);


INSERT INTO VEHICLE(CUSTOMERID, VIN, ESTIMATEDMILEAGE, MILEAGEINTERVAL, ACCIDENT) VALUES
('C000', '133DSS132456ASDFG', 91010, 4000, FALSE),
('C001', '789FGH132456QWERT', 127103, 2000, FALSE),
('C002', '741ASD987665ASDFG', 33059, 20000, FALSE),
('C003', '963NJI951753PLOKH', 21028, 16000, TRUE),
('C004', '456ASD986532SSSSD', 121119, 10000, FALSE),
('C005', '987POO123132CCCFT', 86493, 13000, FALSE),
('C006', '794CCC454578SSSSS', 52574, 11000, FALSE),
('C007', '988BHU465987CJCJC', 108, 30000, TRUE),
('C008', '845CCC828288ALOLA', 68208, 23000, FALSE),
('C009', '929MAR10200CCKART', 34462, 12000, FALSE);

INSERT INTO SERVICEPACKAGE(PACKAGECODE, PACKAGECOST) VALUES
(1001, 200),
(1002, 300),
(1003, 400),
(1004, 500),
(1005, 200),
(1006, 300),
(1007, 400),
(1008, 200),
(1009, 500),
(1010, 200),
(1011, 300),
(1012, 400),
(1013, 500),
(1014, 200),
(1015, 300),
(1016, 400),
(1017, 500),
(1018, 100),
(1019, 100);

INSERT INTO SERVICEINTERVAL(MAKE, MODEL, PACKAGECODE, MILEAGE)VALUES
( 'ALFA ROMEO','Giulietta',1001, 10000 ),
( 'ALFA ROMEO','Giulietta',1002, 20000 ),
( 'ALFA ROMEO','Giulietta',1003, 30000 ),
( 'AUDI','A3',1004,5000),
( 'AUDI','A3',1005,10000),
( 'BMW', 'X1',1006, 5000),
( 'BMW', 'X1',1007, 1000),
( 'BMW', 'X1',1008, 20000),
( 'BMW', 'X1',1009, 30000),
( 'BMW', 'X1',1010, 60000),
( 'BMW', 'X1',1011, 120000),
( 'CITROEN UK LTD','Grand C4 Picasso',1012, 15000),
( 'CITROEN UK LTD','Grand C4 Picasso',1013, 30000),
( 'CITROEN UK LTD','Grand C4 Picasso',1014, 50000),
( 'FORD','Kuga',1015, 7000),
( 'FORD','Kuga',1016, 15000),
( 'FORD','Kuga',1017, 25000),
( 'FORD','Kuga',1018, 50000),
( 'HONDA','Jazz',1019, 10000),
( 'HONDA','Jazz',1001, 25000),
( 'HONDA','Jazz',1002, 40000),
( 'MITSUBISHI','Outlander',1003, 30000),
( 'MITSUBISHI','Outlander',1004, 60000),
( 'MITSUBISHI','Outlander',1005, 120000),
( 'SKODA','Yeti Outdoor',1006, 13000),
( 'SsangYong Motor UK Ltd','Korando',1007, 10000),
( 'SsangYong Motor UK Ltd','Korando',1008, 20000),
( 'SsangYong Motor UK Ltd','Korando',1009, 30000),
( 'SsangYong Motor UK Ltd','Korando',1010, 40000),
( 'SUZUKI','Vitara',1011, 10000),
( 'SUZUKI','Vitara',1012, 35000);

INSERT INTO EMPLOYEE(employeeID, title, salary) VALUES
----MECHANIC----
('M011', 'MECHANIC', 34943),
('M012', 'MECHANIC', 35104),
('M013', 'MECHANIC', 36474),
('M014', 'MECHANIC', 36202),
('M015', 'MECHANIC', 33996),
('M016', 'MECHANIC', 39454),
('M017', 'MECHANIC', 38997),
('M018', 'MECHANIC', 33882),
('M019', 'MECHANIC', 33775),
('M020', 'MECHANIC', 45000),

----SERVICETECH----
('S021', 'SERVICETECH', 29876),
('S022', 'SERVICETECH', 28342),
('S023', 'SERVICETECH', 26476),
('S024', 'SERVICETECH', 27221),
('S025', 'SERVICETECH', 26445),
('S026', 'SERVICETECH', 28213),
('S027', 'SERVICETECH', 27874),
('S028', 'SERVICETECH', 29105),
('S029', 'SERVICETECH', 28552),
('S030', 'SERVICETECH', 27924);

INSERT INTO MECHANIC (EMPLOYEEID) VALUES
('M011'),
('M012'),
('M013'),
('M014'),
('M015'),
('M016'),
('M017'),
('M018'),
('M019'),
('M020');

INSERT INTO SKILL (TITLEOFSKILL) VALUES
('change tires'),
('electrical'),
('oil change'),
('suspension'),
('oil filter change'),
('wheel alignment'),
('tire pressure'),
('engine check'),
('brakes repair'),
('diagnosis');

INSERT INTO MASTERYLEVEL (EMPLOYEEID,TITLEOFSKILL, "LEVEL") VALUES
('M011', 'change tires', 1),
('M011', 'electrical', 1),
('M012', 'oil change', 1),
('M012', 'diagnosis', 2),
('M012', 'electrical', 2),
('M013', 'brakes repair', 2),
('M013', 'diagnosis', 2),
('M014', 'oil filter change', 2),
('M014', 'suspension', 1),
('M015', 'wheel alignment', 1),
('M016', 'change tires', 2),
('M016', 'suspension', 2),
('M016', 'wheel alignment', 3),
('M017', 'oil change', 3),
('M017', 'wheel alignment', 3),
('M017', 'tire pressure', 3),
('M018', 'tire pressure', 1),
('M019', 'engine check', 2),
('M020', 'suspension', 3),
('M020', 'change tires', 3),
('M020', 'wheel alignment',3),
('M020', 'engine check', 3),
('M020', 'oil change', 3);

INSERT INTO SERVICETECH (EMPLOYEEID) VALUES
('S021'),
('S022'),
('S023'),
('S024'),
('S025'),
('S026'),
('S027'),
('S028'),
('S029'),
('S030');

INSERT INTO ZIP(ZIPNUMBER, CITY, "STATE") VALUES
(90274, 'Redondo Beach', 'CA'), 
(90275, 'Rancho Palos Verdes', 'CA'),
(90280, 'South Gate', 'CA'),
(90293, 'Playa Del Rey', 'CA'),
(90294, 'Venice', 'CA'),
(90401, 'Santa Monica', 'CA'),
(90501, 'Torrance', 'CA'),
(90801, 'Long Beach', 'CA'),
(92037, 'La Jolla', 'CA'),
(92658, 'Newport Beach', 'CA'),
(92673, 'San Clemente', 'CA'),
(92863, 'Orange', 'CA'),
(92879, 'Corona', 'CA'),
(93101, 'Santa Barbara', 'CA'),
(92651, 'Laguna Beach', 'CA');


INSERT INTO APPOINTMENT(STEADYCUSTOMERID, vin, "DATE", "TIME") VALUES
('C004', '456ASD986532SSSSD', '2017-05-18', '11:00'),
('C005', '987POO123132CCCFT', '2017-06-03', '16:00'),
('C006', '794CCC454578SSSSS', '2017-06-17', '13:00');

--------------NOT COMPLETED--------------------
INSERT INTO SERVICEVISIT(customerID, employeeID, "DATE", "TIME", totalCost, packageCode) VALUES
('C', 'S', '2017--', '00:00', 200, 1001),
('C', 'S', '2017--', '00:00', 200, 1001),
('C', 'S', '2017--', '00:00', 200, 1001),
('C', 'S', '2017--', '00:00', 200, 1001),
('C', 'S', '2017--', '00:00', 200, 1001),
('C', 'S', '2017--', '00:00', 200, 1001);

INSERT INTO SERVICEINSTANCE(CUSTOMERID, SERVICETECHID, "DATE", SERVICECODE, MECHANICID)VALUES
('C000', 'S029', '2017-03-12', 123,'M015' ),
('C001', 'S028', '2016-03-12', 128,'M015' ),
('C002', 'S027', '2012-03-15', 200,'M015' ),
('C003', 'S026', '2011-03-19', 256,'M015' ),
('C004', 'S026', '2016-03-14', 016,'M015' ),
('C005', 'S026', '2016-03-12', 032,'M011' ),
('C006', 'S026', '2015-03-11', 064,'M012' ),
('C007', 'S024', '2014-03-18', 664,'M012' ),
('C008', 'S023', '2003-03-17', 323,'M012' ),
('C009', 'S023', '2001-03-22', 555,'M012' );



INSERT INTO MENTORSHIP (MENTORID, MENTEEID, TITLEOFSKILL,"START", "END") VALUES
('M020','M012' ,'oil change', '2015-01-13', '2015-02-13'), 
('M020','M019' ,'engine check', '2015-02-26', '2015-03-26'), 
('M020','M016' ,'change tires', '2017-04-26', NULL), --current, still ongoing.
('M020','M019' ,'engine check', '2015-02-26', '2013-03-26'), 
('M020','M016' ,'suspension', '2017-01-15', '2017-02-15'),
('M017', 'M016', 'wheel alignment', '2016-05-22', '2016-06-22'),
('M017', 'M016', 'wheel alignment', '2016-05-22', '2016-06-22'),
('M020','M014', 'suspension', '2016-07-03', '2016-08-03');

