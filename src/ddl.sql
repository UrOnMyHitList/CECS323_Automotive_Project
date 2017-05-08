-- TABLES

CREATE TABLE PERSON(
    PERSONID VARCHAR(20) NOT NULL,
    FIRSTNAME VARCHAR(20) NOT NULL,
    LASTNAME VARCHAR(20) NOT NULL,
    EMAIL VARCHAR(20) NOT NULL,
    PHONENUMBER INT NOT NULL,

    PRIMARY KEY(PERSONID)
);
CREATE TBALE ZIP(
    ZIPNUMBER VARCHAR(5) NOT NULL,
    CITY VARCHAR(10) NOT NULL,
    "STATE" VARCHAR(2) NOT NULL,

    FOREIGN KEY (ZIPNUMBER) REFRENCES ADDRESS(ZIP)
);
CREATE TABLE STEADY(
    CUSTOMERID VARCHAR(20) NOT NULL,
    LOYALTYPOINTS VARCHAR(10) NOT NULL,
    ANNUALTOTAL FLOAT NOT NULL,
    
    PRIMARY KEY(CUSTOMERID),
    FOREIGN KEY (CUSTOMERID) REFRENCES CUSTOMER(CUSTOMERID)
);
CREATE TABLE PREMIER(
    CUSTOMERID VARCHAR(20) NOT NULL,
    MONTHLYFEE FLOAT NOT NULL,
    BONUS VARCHAR(10) NOT NULL,
    
    PRIMARY KEY(CUSTOMERID),
    FOREIGN KEY (CUSTOMERID) REFRENCES CUSTOMER(CUSTOMERID)
);
CREATE TABLE PROSPECTIVE(
    CUSTOMERID VARCHAR(20) NOT NULL,
    CONTACTATTEMPTS VARCHAR(5) NOT NULL,
    
    PRIMARY KEY(CUSTOMERID),
    FOREIGN KEY (CUSTOMERID) REFERENCES CUSTOMER(CUSTOMERID)
);
CREATE TABLE EMPLOYEE(
    EMPLOYEEID VARCHAR(20) NOT NULL,
    TITLE VARCHAR(15) NOT NULL,
    SALARY FLOAT NOT NULL
    CHECK(TITLE IN('MECHANIC', 'SERVICE TECH')),

    PRIMARY KEY(EMPLOYEEID),
    FOREIGN KEY(EMPLOYEEID) REFERENCES PERSON(PERSONID)
);
CREATE TABLE MECHANIC(
    EMPLOYEEID VARCHAR(20) NOT NULL,

    PRIMARY KEY(EMPLOYEEID),
    FOREIGN KEY(EMPLOYEEID) REFERENCES EMPLOYEE(EMPLOYEEID)
);
CREATE TABLE MASTERYLEVEL(
    EMPLOYEEID VARCHAR(20) NOT NULL,
    TITLEOFSKILL VARCHAR(10) NOT NULL,
    "LEVEL" INT NOT NULL,

    PRIMARY KEY(EMPLOYEEID, TITLEOFSKILL),
    FOREIGN KEY(EMPLOYEEID) REFERENCES MECHANIC(EMPLOYEEID),
    FOREIGN KEY(TITLEOFSKILL) REFERENCES SKILL(TITLEOFSKILL)
);
CREATE TABLE SKILL(
    EMPLOYEEID VARCHAR(20) NOT NULL,
    TITLEOFSKILL VARCHAR(10) NOT NULL,
    PRIMARY KEY(TITLEOFSKILL);
    FOREIGN KEY(EMPLOYEEID) REFERENCES MECHANIC(EMPLOYEEID)
);
CREATE TABLE MENTORSHIP(
    MENTORID VARCHAR(20) NOT NULL;
    MENTEEID VARCHAR(20) NOT NULL,
    TITLEOFSKILL VARCHAR(10) NOT NULL,
    "START" DATE NOT NULL,
    "END" DATE NOT NULL,

    PRIMARY KEY(MENTORID, MENTEEID, TITLEOFSKILL),
    FOREIGN KEY(MENTORID) REFERENCES MECHANIC(EMPLOYEEID),
    FOREIGN KEY(MENTEEID) REFERENCES MECHANIC(EMPLOYEEID)
    FOREIGN KEY(TITLEOFSKILL) REFERENCES SKILL(TITLEOFSKILL)
);


CREATE TABLE SERVICEITEM (
    serviceCode INT NOT NULL PRIMARY KEY,
    serviceName VARCHAR(25),
    titleOfSkill VARCHAR(10),
    "TIME" TIME,
    estimatedCost FLOAT,
    packageCode INT,
    CONSTRAINT svcItem_pk PRIMARY KEY (serviceCode),
    CONSTRAINT skill_fk FOREIGN KEY (titleOfSkill) REFERENCES SKILL (titleOfSkill),
    CONSTRAINT pkgCode_fk FOREIGN KEY (packageCode) REFERENCES SERVICEPACKAGE (packageCode)
);

CREATE TABLE SERVICEPACKAGE (
    packageCode INT NOT NULL PRIMARY KEY,
    packageCost FLOAT
);



CREATE TABLE Vehicle (
    customerID INT NOT NULL,
    vin varchar(16) NOT NULL,
    make varchar(20) NOT NULL,
    model varchar(20) NOT NULL,
    "year" YEAR NOT NULL,
    estimatedMileage INT NOT NULL,
    mileageInterval INT NOT NULL,
    accident BOOLEAN NOT NULL,

    CONSTRAINT person_fk FOREIGN KEY (customerID) REFERENCES customer (personID),
    CONSTRAINT vehicle_pk PRIMARY KEY (personID, vin)
);



CREATE TABLE ServiceInterval (
    personID INT NOT NULL,
    vin varchar(16) NOT NULL,
    packageCode INT NOT NULL,
    "date" DATE NOT NULL,

    CONSTRAINT personID_fk FOREIGN KEY () REFERENCES VEHICLE (personID),
    CONSTRAINT vin_fk FOREIGN KEY () REFERENCES VEHICLE (vin),
    CONSTRAINT packageCode_fk FOREIGN KEY () REFERENCES SERVICEPACKAGE (packageCode),

    CONSTRAINT ServiceInterval_pk PRIMARY KEY (personID, vin, packageCode,"date")
);
