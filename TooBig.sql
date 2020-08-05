CREATE TABLE IF NOT EXISTS dbo."TooBig"
(
    "TooBigId"                    INTEGER  GENERATED ALWAYS AS IDENTITY       NOT NULL,
    "CustomerId"                  INTEGER                                     NOT NULL,    
    "DomainId"                    INTEGER                                         NULL,    
    "UseDefault"                  BOOLEAN                                     NOT NULL    CONSTRAINT "DF_TooBig_UseDefault"             DEFAULT TRUE,
    "CheckUs_maxEmailSize"        INTEGER                                     NOT NULL    CONSTRAINT "DF_TooBig_CheckUs_maxEmailSize"   DEFAULT (0),
    "IsReseller"                  BOOLEAN                                     NOT NULL    CONSTRAINT "DF_TooBig_IsReseller"             DEFAULT FALSE,
    "DateCreated"                 TIMESTAMP(3)                                NOT NULL    CONSTRAINT "DF_TooBig_DateCreated"            DEFAULT LOCALTIMESTAMP,
    "DateAmended"                 TIMESTAMP(3)                                NOT NULL    CONSTRAINT "DF_TooBig_DateAmended"            DEFAULT LOCALTIMESTAMP,
    "WhoAmended_nt_username"      VARCHAR(255) COLLATE dbo.case_insensitive   NOT NULL    CONSTRAINT "DF_TooBig_WhoAmended_nt_username" DEFAULT CURRENT_USER,
    "WhoAmended_hostname"         VARCHAR(255) COLLATE dbo.case_insensitive   NOT NULL    CONSTRAINT "DF_TooBig_WhoAmended_hostname"    DEFAULT dbo."HostName"(),  
    
    CONSTRAINT "PK_TooBig" PRIMARY KEY  
    (
        "TooBigId" 
    )
);

CREATE UNIQUE INDEX IF NOT EXISTS "IX_TooBig_CL01" ON dbo."TooBig"
(
     "CustomerId", 
     "IsReseller", 
     "DomainId" ASC NULLS FIRST
    );