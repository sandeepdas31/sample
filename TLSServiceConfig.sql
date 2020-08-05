CREATE TABLE IF NOT EXISTS dbo."TLSServiceConfig"
(   
    "TLSServiceConfigId"  INTEGER                                     NOT NULL,
    "ConfigKey"           VARCHAR(50)  COLLATE dbo.case_insensitive   NOT NULL,
    "ConfigValue"         VARCHAR(255) COLLATE dbo.case_insensitive   NOT NULL,
    
    CONSTRAINT "PK_TLSServiceConfig" PRIMARY KEY 
    (
        "TLSServiceConfigId"
    )
);

CREATE UNIQUE INDEX IF NOT EXISTS "IX_TLSServiceConfig_UN01" ON dbo."TLSServiceConfig"
 (
     "ConfigKey"
) WITH (FILLFACTOR = 80);
