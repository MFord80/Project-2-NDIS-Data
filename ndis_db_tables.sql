-- Table schemata for ndis_db

CREATE TABLE "participants" (
    "key" integer   NOT NULL PRIMARY KEY,
    "report_date" varchar(10)   NOT NULL,    
    "district" varchar(30)   NOT NULL,
    "disability_group" varchar(30)   NOT NULL,    
    "age_band" varchar(10)   NOT NULL,
    "support_category" varchar(30)   NOT NULL,
    "participant_count" integer   NOT NULL
);


CREATE TABLE "utilisation" (
    "key" integer   NOT NULL PRIMARY KEY,
    "report_date" varchar(10)   NOT NULL,    
    "district" varchar(30)   NOT NULL,
    "disability_group" varchar(30)   NOT NULL,    
    "age_band" varchar(10)   NOT NULL,
    "support_category" varchar(30)   NOT NULL,
    "utilisation" integer   NOT NULL,
    "provider_count" float
);

