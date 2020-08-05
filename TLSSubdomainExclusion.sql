CREATE TABLE  IF NOT EXISTS dbo."TLSSubdomainExclusion"
(   
    "TLSSubdomainExclusionId"   INTEGER      GENERATED ALWAYS AS IDENTITY  NOT NULL,
    "DomainId"                  INTEGER                                    NOT NULL,
    "SubdomainName"             VARCHAR(261) COLLATE dbo.case_insensitive  NOT NULL,
    "DateCreated"               TIMESTAMP(3)                               NOT NULL CONSTRAINT "DF_TLSSubdomainExclusion_DateCreated"              DEFAULT LOCALTIMESTAMP,
    "DateAmended"               TIMESTAMP(3)                               NOT NULL CONSTRAINT "DF_TLSSubdomainExclusion_DateAmended"              DEFAULT LOCALTIMESTAMP,    
    "WhoAmended_nt_username"    VARCHAR(255) COLLATE dbo.case_insensitive      NULL CONSTRAINT "DF_TLSSubdomainExclusion_WhoAmended_nt_username"   DEFAULT CURRENT_USER,
    "WhoAmended_hostname"       VARCHAR(255) COLLATE dbo.case_insensitive      NULL CONSTRAINT "DF_TLSSubdomainExclusion_WhoAmended_hostname"      DEFAULT dbo."HostName"(),    
   
    CONSTRAINT "PK_TLSSubdomainExclusion" PRIMARY KEY 
    (
        "TLSSubdomainExclusionId"
    )
);

CREATE INDEX  IF NOT EXISTS "IX_TLSSubdomainExclusion_NC01" ON dbo."TLSSubdomainExclusion"
(
    "DomainId"
    ) WITH (FILLFACTOR = 80);

CREATE UNIQUE INDEX  IF NOT EXISTS "IX_TLSSubdomainExclusion_UN01" ON dbo."TLSSubdomainExclusion" 
(
    "SubdomainName"
    ) WITH (FILLFACTOR = 80);