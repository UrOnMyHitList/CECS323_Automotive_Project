-- TABLES
--hello



CREATE TABLE PERSON(
    PERSONID VARCHAR(20) NOT NULL,
    FIRSTNAME VARCHAR(20) NOT NULL,
    LASTNAME VARCHAR(20) NOT NULL,
    EMAIL VARCHAR(20) NOT NULL,
    PHONENUMBER INT NOT NULL,

    PRIMARY KEY(PERSONID)
);

CREATE TABLE SERVICEPACKAGE (
    packageCode INT NOT NULL PRIMARY KEY,
    packageCost FLOAT
);

CREATE TABLE ADDRESS (
    ADDRESS VARCHAR (40) NOT NULL,
    ADDRESSTYPE VARCHAR (20) NOT NULL,
    ZIP INT NOT NULL,
    PERSONID VARCHAR(20) NOT NULL,

    PRIMARY KEY (ZIP),
    CONSTRAINT ADDRESS_FK FOREIGN KEY (PERSONID) REFERENCES PERSON (PERSONID)

);


CREATE TABLE ZIP(
    ZIPNUMBER INT NOT NULL,
    CITY VARCHAR(10) NOT NULL,
    "STATE" VARCHAR(2) NOT NULL,

    FOREIGN KEY (ZIPNUMBER) REFERENCES ADDRESS(ZIP)
);

CREATE TABLE CUSTOMER (
    CUSTOMERID VARCHAR(20) NOT NULL,
    CUSTOMERTYPE VARCHAR(20) NOT NULL,
    REFERREDBY VARCHAR(20) NOT NULL,
    CUSTOMERLEVEL VARCHAR(20) NOT NULL,
    TOTALSPENT INT NOT NULL,

    CHECK(CUSTOMERLEVEL IN('PREMIER', 'STEADY', 'PROSPECTIVE')),

    PRIMARY KEY (CUSTOMERID),
    FOREIGN KEY (CUSTOMERID) REFERENCES PERSON (PERSONID)
    
);

CREATE TABLE STEADY(
    CUSTOMERID VARCHAR(20) NOT NULL,
    LOYALTYPOINTS VARCHAR(10) NOT NULL,
    ANNUALTOTAL FLOAT NOT NULL,
    
    PRIMARY KEY(CUSTOMERID),
    FOREIGN KEY (CUSTOMERID) REFERENCES CUSTOMER(CUSTOMERID)
);
CREATE TABLE PREMIER(
    CUSTOMERID VARCHAR(20) NOT NULL,
    MONTHLYFEE FLOAT NOT NULL,
    BONUS VARCHAR(10) NOT NULL,
    
    PRIMARY KEY(CUSTOMERID),
    FOREIGN KEY (CUSTOMERID) REFERENCES CUSTOMER(CUSTOMERID)
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
    SALARY FLOAT NOT NULL,
    CHECK(TITLE IN('MECHANIC', 'SERVICE TECH')),

    PRIMARY KEY(EMPLOYEEID),
    FOREIGN KEY(EMPLOYEEID) REFERENCES PERSON(PERSONID)
);

CREATE TABLE MECHANIC(
    EMPLOYEEID VARCHAR(20) NOT NULL,

    PRIMARY KEY(EMPLOYEEID),
    FOREIGN KEY(EMPLOYEEID) REFERENCES EMPLOYEE(EMPLOYEEID)
);


CREATE TABLE SERVICETECH (
    EMPLOYEEID VARCHAR(20) NOT NULL,

    PRIMARY KEY(EMPLOYEEID),
    FOREIGN KEY(EMPLOYEEID) REFERENCES EMPLOYEE(EMPLOYEEID)


);
CREATE TABLE SKILL(
    EMPLOYEEID VARCHAR(20) NOT NULL,
    TITLEOFSKILL VARCHAR(10) NOT NULL,
    PRIMARY KEY(TITLEOFSKILL),
    FOREIGN KEY(EMPLOYEEID) REFERENCES MECHANIC(EMPLOYEEID)
);
CREATE TABLE MASTERYLEVEL(
    EMPLOYEEID VARCHAR(20) NOT NULL,
    TITLEOFSKILL VARCHAR(10) NOT NULL,
    "LEVEL" INT NOT NULL,

    PRIMARY KEY(EMPLOYEEID, TITLEOFSKILL),
    FOREIGN KEY(EMPLOYEEID) REFERENCES MECHANIC(EMPLOYEEID),
    FOREIGN KEY(TITLEOFSKILL) REFERENCES SKILL(TITLEOFSKILL)
);




CREATE TABLE MENTORSHIP(
    MENTORID VARCHAR(20) NOT NULL,
    MENTEEID VARCHAR(20) NOT NULL,
    TITLEOFSKILL VARCHAR(10) NOT NULL,
    "START" DATE NOT NULL,
    "END" DATE NOT NULL,

    PRIMARY KEY(MENTORID, MENTEEID, TITLEOFSKILL),
    FOREIGN KEY(MENTORID) REFERENCES MECHANIC(EMPLOYEEID),
    FOREIGN KEY(MENTEEID) REFERENCES MECHANIC(EMPLOYEEID),
    FOREIGN KEY(TITLEOFSKILL) REFERENCES SKILL(TITLEOFSKILL)
);


CREATE TABLE Vehicle (
    customerID VARCHAR(20) NOT NULL,
    vin varchar(20) NOT NULL,
    make varchar(20) NOT NULL,
    model varchar(20) NOT NULL,
    "YEAR" VARCHAR(4) NOT NULL,
    estimatedMileage INT NOT NULL,
    mileageInterval INT NOT NULL,
    accident BOOLEAN NOT NULL,

    CONSTRAINT person_fk FOREIGN KEY (customerID) REFERENCES customer (CUSTOMERID),
    CONSTRAINT vehicle_pk PRIMARY KEY (CUSTOMERID, vin)
);


CREATE TABLE APPOINTMENT (
    CUSTOMERID VARCHAR(20) NOT NULL,
    VIN VARCHAR(20) NOT NULL,
    "DATE" DATE NOT NULL, 
    "TIME"  TIME NOT NULL,
    
    PRIMARY KEY(CUSTOMERID, VIN),
    FOREIGN KEY(CUSTOMERID) REFERENCES STEADY (CUSTOMERID),
    FOREIGN KEY(VIN) REFERENCES VEHICLE (VEHICLE_PK)

);

CREATE TABLE SERVICEVISIT(
    CUSTOMERID VARCHAR(20) NOT NULL,
    EMPLOYEEID VARCHAR(20) NOT NULL,
    "DATE" DATE NOT NULL,
    "TIME" TIME NOT NULL,
    SERVICETYPE VARCHAR(20) NOT NULL,
    TOTALCOST VARCHAR(20) NOT NULL,
    PACKAGECODE INT NOT NULL,

    PRIMARY KEY(CUSTOMERID,EMPLOYEEID,"DATE"),

    FOREIGN KEY(CUSTOMERID) REFERENCES CUSTOMER(CUSTOMERID),
    FOREIGN KEY(EMPLOYEEID) REFERENCES SERVICETECH(EMPLOYEEID),
    FOREIGN KEY(PACKAGECODE) REFERENCES SERVICEPACKAGE(PACKAGECODE)

);

CREATE TABLE ServiceInterval (
    personID VARCHAR(20) NULL,
    vin varchar(16) NOT NULL,
    packageCode INT NOT NULL,
    "date" DATE NOT NULL,

    CONSTRAINT personID_fk FOREIGN KEY () REFERENCES VEHICLE (personID),
    CONSTRAINT vin_fk FOREIGN KEY () REFERENCES VEHICLE (vin),
    CONSTRAINT packageCode_fk FOREIGN KEY () REFERENCES SERVICEPACKAGE (packageCode),

    CONSTRAINT ServiceInterval_pk PRIMARY KEY (personID, vin, packageCode,"date")
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



CREATE TABLE SERVICEINSTANCE (
    CUSTOMERID VARCHAR(20) NOT NULL,
    SERVICETECHID VARCHAR(20) NOT NULL,
    "DATE" DATE NOT NULL,
    SERVICECODE INT NOT NULL,
    MECHANICID INT NOT NULL,

    PRIMARY KEY(CUSTOMERID,SERVICETECHID,"DATE",SERVICECODE,MECHANICID),

    FOREIGN KEY(CUSTOMERID) REFERENCES CUSTOMER(CUSTOMERID),
    FOREIGN KEY(SERVICETECHID) REFERENCES SERVICEVISIT(EMPLOYEEID),
    FOREIGN KEY("DATE") REFERENCES SERVICEVISIT("DATE"),
    FOREIGN KEY(SERVICECODE) REFERENCES SERVICEITEM (SERVICECODE),
    FOREIGN KEY(MECHANICID) REFERENCES MECHANIC(EMPLOYEEID)
);
