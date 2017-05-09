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


INSERT INTO APPOINTMENT(personID, vin, "DATE", "TIME") VALUES
('C003', '', '2017-05-18', '11:00'),
('C005', '', '2017-06-03', '16:00'),
('C006', '', '2017-06-17', '13:00');