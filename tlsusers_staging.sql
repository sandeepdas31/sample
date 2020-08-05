CREATE TABLE IF NOT EXISTS dbo."tlsusers_staging"
(   
    "DomainName"         VARCHAR(255) COLLATE dbo.case_insensitive  NOT NULL, 
    "ConfigPath"         VARCHAR(500) COLLATE dbo.case_insensitive  NOT NULL, 
    "sequence"           INTEGER                                    NOT NULL,
    "ActualDomainId"     INTEGER                                        NULL,
    "ActualCustomerId"   INTEGER                                        NULL,
    "ConfigPathDomain"   VARCHAR(255) COLLATE dbo.case_insensitive      NULL,
    "IsPBESubdomain"     BOOLEAN                                    NOT NULL CONSTRAINT "DF_tlsusers_staging_IsPBESubdomain" DEFAULT FALSE,
                  
    CONSTRAINT "PK_tlsusers_staging" PRIMARY KEY 
    (
        "sequence"
    )
);