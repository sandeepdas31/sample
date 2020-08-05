CREATE TABLE IF NOT EXISTS dbo."TLSPartnerSubdomainExclusion"
(    
    "TLSPartnerSubdomainExclusionId"   INTEGER       GENERATED ALWAYS AS IDENTITY NOT NULL,
    "TLSPartnerDomainId"               INTEGER                                    NOT NULL,
    "SubdomainName"                    VARCHAR(255)  COLLATE dbo.case_insensitive NOT NULL,
    "DateCreated"                      TIMESTAMP(3)                               NOT NULL CONSTRAINT "DF_TLSPartnerSubdomainExclusion_DateCreated"            DEFAULT LOCALTIMESTAMP,
    "DateAmended"                      TIMESTAMP(3)                               NOT NULL CONSTRAINT "DF_TLSPartnerSubdomainExclusion_DateAmended"            DEFAULT LOCALTIMESTAMP,    
    "WhoAmended_nt_username"           VARCHAR(255)  COLLATE dbo.case_insensitive     NULL CONSTRAINT "DF_TLSPartnerSubdomainExclusion_WhoAmended_nt_username" DEFAULT CURRENT_USER,
    "WhoAmended_hostname"              VARCHAR(255)  COLLATE dbo.case_insensitive     NULL CONSTRAINT "DF_TLSPartnerSubdomainExclusion_WhoAmended_hostname"    DEFAULT dbo."HostName"(),        
    
    CONSTRAINT "PK_TLSPartnerSubdomainExclusion" PRIMARY KEY 
    (
        "TLSPartnerSubdomainExclusionId"
    )
);

CREATE UNIQUE INDEX IF NOT EXISTS "IX_TLSPartnerSubdomainExclusion_NU01" ON dbo."TLSPartnerSubdomainExclusion"
 (
     "TLSPartnerDomainId",
     "SubDomainName"
     ) WITH (FILLFACTOR = 80);
