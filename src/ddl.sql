-- TABLES

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