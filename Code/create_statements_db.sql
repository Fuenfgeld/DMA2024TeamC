
CREATE TABLE IF NOT EXISTS patients_bc (
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
                           COUNTRY    STRING,
                           ZIP        STRING,
                           LAT        INTEGER,
                           LON        INTEGER,
                           HEALTHCARE_EXPENSES INTEGER,
                           HEALTHCARE_COVERAGE INTEGER
  );
                       

CREATE TABLE IF NOT EXISTS observations_bc (
                           observation_code INTEGER PRIMARY KEY AUTOINCREMENT,
                           DATE DATE,
                           PATIENT STRING,
                           ENCOUNTER STRING,
                           CODE STRING,
                           DESCRIPTION STRING,
                           VALUE STRING,
                           UNITS STRING,
                           TYPE STRING,
                           FOREIGN KEY (PATIENT)
                              REFERENCES patients (Id) 
                           FOREIGN KEY (Encounter)
                              REFERENCES encounters (Id) 
);


CREATE TABLE IF NOT EXISTS medications_bc (
                           START DATE,
                           STOP DATE,
                           PATIENT STRING,
                           PAYER STRING,
                           ENCOUNTER STRING,
                           CODE STRING,
                           DESCRIPTION STRING,
                           BASE_COST INTEGER,
                           PAYER_COVERAGE INTEGER,
                           DISPENSES INTEGER,
                           TOTALCOST INTEGER,
                           REASONCODE STRING,
                           REASONDESCRIPTION STRING,
                           FOREIGN KEY (PATIENT)
                              REFERENCES patients (Id) 
  );

CREATE TABLE IF NOT EXISTS procedures_bc (
                           DATE DATE,
                           PATIENT STRING,
                           ENCOUNTER STRING,
                           CODE STRING,
                           DESCRIPTION STRING,
                           BASE_COST INTEGER,
                           REASONCODE STRING,
                           REASONDESCRIPTION STRING,
                           FOREIGN KEY (PATIENT)
                              REFERENCES patients (Id) 
                           FOREIGN KEY (Encounter)
                              REFERENCES encounters (Id) 
                       );
 
CREATE TABLE IF NOT EXISTS immunizations_bc (
                           DATE DATE,
                           PATIENT STRING,
                           ENCOUNTER STRING,
                           CODE STRING,
                           DESCRIPTION STRING,
                           BASE_COST INTEGER,
                           FOREIGN KEY (PATIENT)
                              REFERENCES patients (Id) 
                           FOREIGN KEY (Encounter)
                              REFERENCES encounters (Id) 
  );

CREATE TABLE IF NOT EXISTS encounters_bc (
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
                           BASE_ENCOUNTER_COST INTEGER,
                           TOTAL_CLAIM_COST INTEGER,
                           PAYER_COVERAGE INTEGER,
                           REASONCODE STRING,
                           REASONDESCRIPTION STRING,
                           FOREIGN KEY (PATIENT)
                              REFERENCES patients (Id) 
);





