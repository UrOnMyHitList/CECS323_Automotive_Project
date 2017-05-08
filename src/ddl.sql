-- TABLES

CREATE TABLE SERVICEITEM (
    serviceCode INT NOT NULL PRIMARY KEY,
    serviceName VARCHAR(25),
    titleOfSkill VARCHAR(10),
    "TIME" TIME,
    estimatedCost FLOAT,
    packageCode INT,
    CONSTRAINT
);

CREATE TABLE SERVICEPACKAGE (
    packageCode INT NOT NULL PRIMARY KEY,
    packageCost FLOAT
);