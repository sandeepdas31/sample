
    CREATE TABLE IF NOT EXISTS dbo."TLSPartnerDomain"
    (    
        "TLSPartnerDomainId"            INTEGER GENERATED ALWAYS AS IDENTITY      NOT NULL,
        "CustomerId"                    INTEGER                                   NOT NULL,
        "DomainName"                    VARCHAR(255) COLLATE dbo.case_insensitive NOT NULL, 
        "TLSStaticRoute"                VARCHAR(261) COLLATE dbo.case_insensitive    NULL, 
        "IsEnabled"                     BOOLEAN                                   NOT NULL     CONSTRAINT "DF_TLSPartnerDomain_IsEnabled"              DEFAULT (FALSE),
        "TLSPartnerDomainGroupId"       INTEGER                                   NOT NULL,
        "DisableTLSFromMTA"             BOOLEAN                                   NOT NULL,
        "TLSCertValidationId"           SMALLINT                                  NOT NULL     CONSTRAINT "DF_TLSPartnerDomain_TLSCertValidationId"    DEFAULT (1),
        "DateCreated"                   TIMESTAMP(3)                              NOT NULL     CONSTRAINT "DF_TLSPartnerDomain_DateCreated"            DEFAULT LOCALTIMESTAMP,
        "DateAmended"                   TIMESTAMP(3)                              NOT NULL     CONSTRAINT "DF_TLSPartnerDomain_DateAmended"            DEFAULT LOCALTIMESTAMP,    
        "WhoAmended_nt_username"        VARCHAR(255) COLLATE dbo.case_insensitive NULL         CONSTRAINT "DF_TLSPartnerDomain_WhoAmended_nt_username" DEFAULT CURRENT_USER,
        "WhoAmended_hostname"           VARCHAR(255) COLLATE dbo.case_insensitive NULL         CONSTRAINT "DF_TLSPartnerDomain_WhoAmended_hostname"    DEFAULT dbo."HostName"(),    
        
        CONSTRAINT "PK_TLSPartnerDomain" PRIMARY KEY 
        (
            "TLSPartnerDomainId"
        )
    ) ;

    CREATE UNIQUE INDEX IF NOT EXISTS "IX_TLSPartnerDomain_NU01"
    ON dbo."TLSPartnerDomain" 
    (
        "CustomerId" ,
        "DomainName"
    ) WITH (FILLFACTOR = 80);

    CREATE INDEX IF NOT EXISTS "IX_TLSPartnerDomain_NC01"
    ON dbo."TLSPartnerDomain" 
    (
     "TLSPartnerDomainGroupId"
    ) 
    