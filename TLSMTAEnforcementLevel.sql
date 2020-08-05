CREATE TABLE IF NOT EXISTS dbo."TLSMTAEnforcementLevel"
( 
     "TLSMTAEnforcementCode" CHAR(1)     COLLATE dbo.case_insensitive NOT NULL,
     "TLSMTAEnforcementDesc" VARCHAR(50) COLLATE dbo.case_insensitive NOT NULL,
 
 CONSTRAINT "PK_TLSMTAEnforcementLevel" PRIMARY KEY 
 (
    "TLSMTAEnforcementCode"
 )
);
