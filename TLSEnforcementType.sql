CREATE TABLE IF NOT EXISTS dbo."TLSEnforcementType"
(    
    "TLSEnforcementTypeId"              SMALLINT                                      NOT NULL,
    "TLSEnforcementTypeDescription"     VARCHAR(50) COLLATE dbo.case_insensitive      NOT NULL,

    CONSTRAINT "PK_TLSEnforcementType" PRIMARY KEY 
    (
        "TLSEnforcementTypeId"
    )
);
