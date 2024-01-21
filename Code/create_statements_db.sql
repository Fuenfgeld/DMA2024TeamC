
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
                           LAT        INTEGER,
                           LON        INTEGER,
                           HEALTHCARE_EXPENSES INTEGER,
                           HEALTHCARE_COVERAGE INTEGER
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
                           BASE_COST INTEGER,
                           PAYER_COVERAGE INTEGER,
                           DISPENSES INTEGER,
                           TOTALCOST INTEGER,
                           REASONCODE STRING,
                           REASONDESCRIPTION STRING,
                           FOREIGN KEY (PATIENT)
                              REFERENCES patients (Id) 
  );

CREATE TABLE IF NOT EXISTS procedures (
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
 
CREATE TABLE IF NOT EXISTS immunizations (
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
                           BASE_ENCOUNTER_COST INTEGER,
                           TOTAL_CLAIM_COST INTEGER,
                           PAYER_COVERAGE INTEGER,
                           REASONCODE STRING,
                           REASONDESCRIPTION STRING,
                           FOREIGN KEY (PATIENT)
                              REFERENCES patients (Id) 
);

CREATE TABLE IF NOT EXISTS facts_table (
                          krebsart  STRING,
                          patient_ID STRING,
                          observation_code INT,
                          procedure_code INT,
                          medication_code INT,
                          immunization_code INT,
                          encounter_ID STRING,
                          patient_LAT        INTEGER,
                          patient_LON        INTEGER,
                          patient_HEALTHCARE_EXPENSES INTEGER,
                          patient_HEALTHCARE_COVERAGE INTEGER,
                          observations_VALUE STRING,
                          observations_CODE STRING,
                          procedures_BASE_COST INTEGER,
                          medications_TOTALCOST INTEGER,
                          immunizations_BASE_COST INTEGER,
                          encounter_BASE_ENCOUNTER_COST INTEGER,
                          FOREIGN KEY (patient_ID)
                            REFERENCES patients (Id) 
                          FOREIGN KEY (observation_code)
                            REFERENCES observations (observation_code) 
                          FOREIGN KEY (procedure_code)
                            REFERENCES procedures (procedure_code)
                          FOREIGN KEY (medication_code)
                            REFERENCES medications (medication_code)
                          FOREIGN KEY (immunization_code)
                            REFERENCES immunizations (immunization_code) 
                          FOREIGN KEY (encounter_ID)
                            REFERENCES encounters (Id) 
);

