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
('M020', 'Otis', 'Jimenez', 'otisjimenez@gmail.com', '775-555-0195');

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

INSERT INTO SERVICEINTERVAL(MAKE, MODEL, PACKAGECODE, MILEAGE)VALUES
( 'ALFA ROMEO','Giulietta','P001', 10000 ),
( 'ALFA ROMEO','Giulietta','P002', 20000 ),
( 'ALFA ROMEO','Giulietta','P003', 30000 ),
( 'AUDI','A3','P001',5000),
( 'AUDI','A3','P001',10000),
( 'BMW', 'X1','P002', 5000),
( 'BMW', 'X1','P003', 1000),
( 'BMW', 'X1','P004', 20000),
( 'BMW', 'X1','P005', 30000),
( 'BMW', 'X1','P006', 60000),
( 'BMW', 'X1','P004', 120000),
( 'CITROEN UK LTD','Grand C4 Picasso','P001', 15000),
( 'CITROEN UK LTD','Grand C4 Picasso','P002', 30000),
( 'CITROEN UK LTD','Grand C4 Picasso','P003', 50000),
( 'FORD','Kuga','P002', 7000),
( 'FORD','Kuga','P003', 15000),
( 'FORD','Kuga','P004', 25000),
( 'FORD','Kuga','P005', 50000),
( 'HONDA','Jazz','P001', 10000),
( 'HONDA','Jazz','P002', 25000),
( 'HONDA','Jazz','P003', 40000),
( 'MITSUBISHI','Outlander','P002', 30000),
( 'MITSUBISHI','Outlander','P002', 60000),
( 'MITSUBISHI','Outlander','P003', 120000),
( 'SKODA','Yeti Outdoor','P004', 13000),
( 'SsangYong Motor UK Ltd','Korando','P005', 10000),
( 'SsangYong Motor UK Ltd','Korando','P004', 20000),
( 'SsangYong Motor UK Ltd','Korando','P003', 30000),
( 'SsangYong Motor UK Ltd','Korando','P002', 40000),
( 'SUZUKI','Vitara','P005', 10000),
( 'SUZUKI','Vitara','P002', 35000);

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
('M020', 'MECHANIC', 45000);

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

INSERT INTO MASTERYLEVEL (EMPLOYEEID,TITLEOFSKILL, "LEVEL") VALUES
('M011', 'change tires', 1),
('M011', 'electrical', 1),
('M012', 'oil change', 1),
('M012', 'diagnosis', 2),
('M012', 'electrical', 2),
('M013', 'brake service', 2),
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
('M020', 'change tires', 3)
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

INSERT INTO ZIP(ZIPNUMBER, CITY, "STATE")
('90274', 'Redondo Beach', 'CA'), 
('90275', 'Rancho Palos Verdes', 'CA'),
('90280', 'South Gate', 'CA'),
('90293', 'Playa Del Rey', 'CA'),
('90294', 'Venice', 'CA'),
('90401', 'Santa Monica', 'CA'),
('90501', 'Torrance', 'CA'),
('90801', 'Long Beach', 'CA'),
('92037', 'La Jolla', 'CA'),
('92658', 'Newport Beach', 'CA'),
('92673', 'San Clemente', 'CA'),
('92863', 'Orange', 'CA'),
('92879', 'Corona', 'CA'),
('93101', 'Santa Barbara', 'CA'),
('92651', 'Laguna Beach', 'CA');

-------CHANGE PRICE ACCORDING TO SERVICE PACKAGE---------
INSERT INTO SERVICEPACKAGE(PACKAGECODE, PACKAGECOST)
('2K5H2', 200),
('UGGZZ', 200),
('ATZV3', 200),
('YXZEY', 200),
('KTZ0P', 200),
('BW3ON', 200),
('QG6B7', 200),
('OSGWG', 200),
('QHNNU', 200),
('2U61E', 200),
('III35', 200),
('87T7T', 200),
('QARZL', 200),
('K6R32', 200),
('KYMEV', 200),
('5FSXX', 200),
('4ZKBG', 200),
('BJA16', 200),
('VTNRE', 200);

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

INSERT INTO APPOINTMENT(personID, vin, "DATE", "TIME") VALUES
('C003', '', '2017-05-18', '11:00'),
('C005', '', '2017-06-03', '16:00'),
('C006', '', '2017-06-17', '13:00');