
CREATE TABLE IF NOT EXISTS patients (
                           Id         STRING PRIMARY KEY,
                           BIRTHDATE  DATE,
                           DEATHDATE  DATE,
                           SSN        STRING,
                           DRIVERS    STRING,
                           PASSPORT   STRING,
                           PREFIX     STRING,
                           FIRST      STRING,
                           LAST       STRING,
                           SUFFIX     STRING,
                           MAIDEN     STRING,
                           MARITAL    STRING,
                           RACE       STRING,
                           ETHNICITY  STRING,
                           GENDER     STRING,
                           BIRTHPLACE STRING,
                           ADDRESS    STRING,
                           CITY       STRING,
                           STATE      STRING,
                           COUNTY    STRING,
                           ZIP        STRING,
                           LAT        DECIMAL(6,2),
                           LON        DECIMAL(6,2),
                           HEALTHCARE_EXPENSES DECIMAL(9,2),
                           HEALTHCARE_COVERAGE DECIMAL(9,2),
                           Table_Names STRING
  );

CREATE TABLE IF NOT EXISTS encounters (
                           Id STRING PRIMARY KEY,
                           START DATE,
                           STOP DATE,
                           PATIENT STRING,
                           ORGANIZATION STRING,
                           PROVIDER STRING,
                           PAYER STRING,
                           ENCOUNTERCLASS STRING,
                           CODE STRING,
                           DESCRIPTION STRING,
                           BASE_ENCOUNTER_COST DECIMAL(9,2),
                           TOTAL_CLAIM_COST DECIMAL(9,2),
                           PAYER_COVERAGE DECIMAL(9,2),
                           REASONCODE STRING,
                           REASONDESCRIPTION STRING,
                           Table_Names STRING,
                           FOREIGN KEY (PATIENT) 
                              REFERENCES patients (Id) 
);



CREATE TABLE IF NOT EXISTS observations (
                           observation_code INTEGER PRIMARY KEY AUTOINCREMENT,
                           DATE DATE,
                           PATIENT STRING,
                           ENCOUNTER STRING,
                           CODE STRING,
                           DESCRIPTION STRING,
                           VALUE STRING,
                           UNITS STRING,
                           TYPE STRING,
                           Table_Names STRING,
                           FOREIGN KEY (PATIENT) 
                              REFERENCES patients (Id)
                           FOREIGN KEY (Encounter) 
                              REFERENCES encounters (Id) 
);


CREATE TABLE IF NOT EXISTS medications (
                           START DATE,
                           STOP DATE,
                           PATIENT STRING,
                           PAYER STRING,
                           ENCOUNTER STRING,
                           CODE STRING,
                           DESCRIPTION STRING,
                           BASE_COST DECIMAL(9,2),
                           PAYER_COVERAGE DECIMAL(9,2),
                           DISPENSES DECIMAL(9,2),
                           TOTALCOST DECIMAL(9,2),
                           REASONCODE STRING,
                           REASONDESCRIPTION STRING,
                           Table_Names STRING,
                           FOREIGN KEY (PATIENT) 
                              REFERENCES patients (Id)
                           FOREIGN KEY (Encounter) 
                              REFERENCES encounters (Id) 
  );

CREATE TABLE IF NOT EXISTS procedures (
                           DATE DATE,
                           PATIENT STRING,
                           ENCOUNTER STRING,
                           CODE STRING,
                           DESCRIPTION STRING,
                           BASE_COST DECIMAL(9,2),
                           REASONCODE STRING,
                           REASONDESCRIPTION STRING,
                           Table_Names STRING,
                           FOREIGN KEY (PATIENT) 
                              REFERENCES patients (Id) 
                           FOREIGN KEY (Encounter) 
                              REFERENCES encounters (Id) 
                       );
 
CREATE TABLE IF NOT EXISTS immunizations (
                           DATE DATE,
                           PATIENT STRING,
                           ENCOUNTER STRING,
                           CODE STRING,
                           DESCRIPTION STRING,
                           BASE_COST DECIMAL(9,2),
                           Table_Names STRING,
                           FOREIGN KEY (PATIENT) 
                              REFERENCES patients (Id) 
                           FOREIGN KEY (Encounter) 
                              REFERENCES encounters (Id) 
  );


CREATE TABLE IF NOT EXISTS facts_table (
                          cancer_type STRING,
                          patient_ID STRING,
                          observation_code INT,
                          encounter_ID STRING,
                          patient_LAT        DECIMAL(6,2),
                          patient_LON        DECIMAL(6,2),
                          patient_HEALTHCARE_EXPENSES DECIMAL(6,2),
                          patient_HEALTHCARE_COVERAGE DECIMAL(6,2),
                          patient_BIRTHDATE DATE, 
                          observations_VALUE STRING,
                          observations_DATE  DATE,
                          procedures_BASE_COST DECIMAL(6,2),
                          medications_TOTALCOST DECIMAL(6,2),
                          immunizations_BASE_COST DECIMAL(6,2),
                          encounter_BASE_ENCOUNTER_COST DECIMAL(6,2),
                          FOREIGN KEY (patient_ID) 
                              REFERENCES patients (Id) 
                          FOREIGN KEY (observation_code) 
                              REFERENCES observations (observation_code) 
                          FOREIGN KEY (encounter_ID) 
                              REFERENCES encounters (Id)
                          FOREIGN KEY (patient_ID) 
                              REFERENCES procedures (PATIENT) 
                          FOREIGN KEY (patient_ID) 
                              REFERENCES medications (PATIENT)
                          FOREIGN KEY (patient_ID) 
                              REFERENCES immunizations (PATIENT) 
  
);

