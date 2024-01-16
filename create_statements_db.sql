
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
                           COUNTRY    STRING,
                           ZIP        STRING,
                           LAT        INTEGER,
                           LON        INTEGER,
                           HEALTHCARE_EXPENSES INTEGER,
                           HEALTHCARE_COVERAGE INTEGER
  );
                       

