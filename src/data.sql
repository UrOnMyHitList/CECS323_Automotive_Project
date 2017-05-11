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
INSERT INTO CUSTOMER( CUSTOMERID, CUSTOMERTYPE, REFERREDBY, CUSTOMERLEVEL, TOTALSPENT, YEARJOINED) VALUES
('C000', 'individual', 'C001', 'premier', 1200, 2015),
('C001', 'individual', 'C002', 'premier', 1000, 2014),
('C002', 'individual', 'C003',  'premier', 1100, 2012),
('C003', 'individual', 'C004',  'steady', 200, 2000),
('C004', 'individual', 'C005',  'steady', 200, 2015),
('C005', 'corporation', 'C006', 'steady', 200, 2017),
('C006', 'corporation', 'C007', 'steady', 200, 2017),
('C007', 'corporation', 'C008',  'prospective', 200, 2011),
('C008', 'corporation', 'C009',  'prospective', 200, 2013),
('C009', 'corporation', 'C004',  'prospective', 200, 2016);

INSERT INTO STEADY (CUSTOMERID, LOYALTYPOINTS, ANNUALTOTAL ) VALUES
('C003', '50', 500),
('C004', '20', 1000),
('C005', '30', 500),
('C006', '40', 600);

INSERT INTO PREMIER (CUSTOMERID, MONTHLYFEE,  BONUS ) VALUES
('C000', 200, 0),
('C001', 200, 1), 
('C002', 200, 1);

INSERT INTO PROSPECTIVE (CUSTOMERID, CONTACTATTEMPTS) VALUES
('C007', 2, '2017-04-01'), 
('C008', 1, '2017-01-01'),
('C009', 3, '2016-03-01');

INSERT INTO VIN(VIN,MAKE, MODEL, VYEAR) VALUES
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
(1008, 200);
-- (1009, 500),
-- (1010, 200),
-- (1011, 300),
-- (1012, 400),
-- (1013, 500),
-- (1014, 200),
-- (1015, 300),
-- (1016, 400),
-- (1017, 500),
-- (1018, 100),
-- (1019, 100);

INSERT INTO SERVICEINTERVAL(MAKE, MODEL, PACKAGECODE, MILEAGE)VALUES
( 'ALFA ROMEO','Giulietta',1001, 10000 ),
( 'ALFA ROMEO','Giulietta',1002, 20000 ),
( 'ALFA ROMEO','Giulietta',1003, 30000 ),
( 'AUDI','A3',1004,5000),
( 'AUDI','A3',1005,10000),
( 'BMW', 'X1',1006, 5000),
( 'BMW', 'X1',1007, 1000),
( 'BMW', 'X1',1008, 20000),
( 'BMW', 'X1',1001, 30000),
( 'BMW', 'X1',1002, 60000),
( 'BMW', 'X1',1003, 120000),
( 'CITROEN UK LTD','Grand C4 Picasso',1004, 15000),
( 'CITROEN UK LTD','Grand C4 Picasso',1005, 30000),
( 'CITROEN UK LTD','Grand C4 Picasso',1006, 50000),
( 'FORD','Kuga',1007, 7000),
( 'FORD','Kuga',1008, 15000),
( 'FORD','Kuga',1001, 25000),
( 'FORD','Kuga',1002, 50000),
( 'HONDA','Jazz',1003, 10000),
( 'HONDA','Jazz',1004, 25000),
( 'HONDA','Jazz',1005, 40000),
( 'MITSUBISHI','Outlander',1006, 30000),
( 'MITSUBISHI','Outlander',1007, 60000),
( 'MITSUBISHI','Outlander',1008, 120000),
( 'SKODA','Yeti Outdoor',1006, 13000),
( 'SsangYong Motor UK Ltd','Korando',1007, 10000),
( 'SsangYong Motor UK Ltd','Korando',1008, 20000),
( 'SsangYong Motor UK Ltd','Korando',1001, 30000),
( 'SsangYong Motor UK Ltd','Korando',1002, 40000),
( 'SUZUKI','Vitara',1003, 10000),
( 'SUZUKI','Vitara',1004, 35000);

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

INSERT INTO MASTERYLEVEL (EMPLOYEEID,TITLEOFSKILL, MLEVEL) VALUES
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

INSERT INTO ZIP(ZIPNUMBER, CITY, ZSTATE) VALUES
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

INSERT INTO ADDRESS (PERSONID, ADDRESS, ADDRESSTYPE, ZIP) VALUES
('C000', '7869 SMITH STREET', 'HOME', 90274),
('C001', '1234 JEFFERSON STREET', 'HOME', 92651),
('C002', '8989 KHOL PLACE', 'HOME', 92673),
('C003', '2322 LROWL STREET', 'HOME', 90801),
('C004', '5673 WEARY STREET', 'HOME', 90294),
('C005', '2190 CULLING DRIVE', 'WORK', 90274),
('C006', '8910 FAIRY DRIVE', 'WORK', 90275),
('C007', '2134 BARRY STREET', 'WORK', 90280),
('C008', '4359 WELP STREET', 'WORK', 90293),
('C009', '7771 REUTERS VILLA', 'WORK', 90294),
('M011', '2323 PEACH GROVE', 'HOME', 90401),
('M012', '1111 WATER PLACE', 'HOME', 90501),
('M013', '2220 KEYBOARD DRIVE', 'HOME', 90801),
('M014', '5551 LETTER PLACE', 'HOME', 92037),
('M015', '8989 WQRT DRIVE', 'HOME', 92658),
('M016', '2111 GODZILLA PLACE', 'HOME', 92673),
('M017', '9011 CONE PLACE', 'HOME', 92863),
('M018', '3211 YURI PLACE', 'HOME', 92879),
('M019', '5621 ZAMZAM PLACE', 'HOME', 93101),
('M020', '9432 LOL PLACE', 'HOME', 92651),
('S021', '4442 RUTS PLACE', 'HOME', 90274),
('S022', '1212 PLAWS PLACE', 'HOME', 90294),
('S023', '8111 VENICE PLACE', 'HOME', 92658),
('S024', '9191 BGM PLACE', 'HOME', 92651),
('S025', '2017 PALLET TOWN', 'HOME', 90401),
('S026', '2016 ZUBAT PLACE', 'HOME', 92651),
('S027', '2300 MARGARITA PLACE', 'HOME', 90801),
('S028', '4301 CHAIR PLACE', 'HOME', 90274),
('S029', '1129 VORD PLACE', 'HOME', 90274),
('S030', '3331 LULZ PLACE', 'HOME', 90801);

INSERT INTO APPOINTMENT(STEADYCUSTOMERID, vin, ADATE, ATIME) VALUES
('C004', '456ASD986532SSSSD', '2017-05-18', '11:00'),
('C005', '987POO123132CCCFT', '2017-06-03', '16:00'),
('C006', '794CCC454578SSSSS', '2017-06-17', '13:00');

INSERT INTO SERVICEVISIT(CUSTOMERID, EMPLOYEEID, SDATE, STIME,TOTALCOST, PACKAGECODE, SERVICETYPE) VALUES
('C001', 'S029', '2017-03-12', '23:00', 15, NULL, 'ITEM'),
('C002', 'S028', '2016-03-12', '20:29', 250, NULL, 'ITEM'),
('C003', 'S027', '2012-03-15', '19:21', 400, 1003, 'PACKAGE'),
('C004', 'S026', '2016-03-14', '11:32', 500, 1004, 'PACKAGE'),
('C005', 'S026', '2016-03-12', '01:11', 200, 1005, 'PACKAGE');

INSERT INTO SERVICEITEM(SERVICECODE, SERVICENAME, TITLEOFSKILL, timeDuration, ESTIMATEDCOST, PACKAGECODE) VALUES
(1, 'change tires', 'change tires', 1, 15.00, 1001),
(2, 'electrical', 'electrical', 8, 250, 1002),
(3, 'oil change', 'oil change', 1, 20, 1003),
(4, 'suspension', 'suspension', 3, 100, 1004),
(5, 'oil filter change', 'oil filter change', 1, 20, 1003),
(6, 'wheel alignment', 'wheel alignment', 2, 60, 1001),
(7, 'tire pressure', 'tire pressure', 1, 10, 1005),
(8, 'engine check', 'engine check', 3, 100, 1006),
(9, 'brakes repair', 'brakes repair', 2, 75, 1007),
(10, 'diagnosis', 'diagnosis', 5, 150, 1008);

INSERT INTO SERVICEINSTANCE(CUSTOMERID, SERVICETECHID, SDATE, SERVICECODE, MECHANICID)VALUES
('C001', 'S029', '2017-03-12', 3,'M017' ),
('C002', 'S028', '2016-03-12', 4,'M020' ),
('C003', 'S027', '2012-03-15', 2,'M012' ),
('C004', 'S026', '2016-03-14', 1,'M020' ),
('C005', 'S026', '2016-03-12', 7,'M017' );

INSERT INTO MENTORSHIP (MENTORID, MENTEEID, TITLEOFSKILL,MSTART, MEND) VALUES
('M020','M012' ,'suspension', '2015-01-13', '2015-02-13'), 
('M020','M019' ,'wheel alignment', '2015-02-26', '2015-03-26'), 
('M020','M016' ,'suspension', '2017-01-15', '2017-02-15'),
('M020','M016' ,'engine check', '2017-04-26', NULL), --current, still ongoing.
('M020','M019' ,'engine check', '2015-02-26', '2013-03-26'), 
('M017', 'M016', 'wheel alignment', '2016-05-22', '2016-06-22'),
('M020','M014', 'suspension', '2016-07-03', '2016-08-03');