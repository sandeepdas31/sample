    CREATE TABLE IF NOT EXISTS dbo."TLSPartnerDomainGroup"
    (   
        "TLSPartnerDomainGroupId"       INTEGER GENERATED ALWAYS AS IDENTITY      NOT NULL,
        "CustomerId"                    INTEGER                                   NOT NULL,
        "DomainGroupName"               VARCHAR(100) COLLATE dbo.case_insensitive NOT NULL,
        "IsSharedWithChildCustomers"    BOOLEAN                                   NOT NULL   CONSTRAINT "DF_TLSPartnerDomainGroup_IsSharedWithChildCustomers"    DEFAULT (FALSE),
        "DateCreated"                   TIMESTAMP(3)                              NOT NULL   CONSTRAINT "DF_TLSPartnerDomainGroup_DateCreated"                   DEFAULT LOCALTIMESTAMP,
        "DateAmended"                   TIMESTAMP(3)                              NOT NULL   CONSTRAINT "DF_TLSPartnerDomainGroup_DateAmended"                   DEFAULT LOCALTIMESTAMP,    
        "WhoAmended_nt_username"        VARCHAR(255) COLLATE dbo.case_insensitive NULL       CONSTRAINT "DF_TLSPartnerDomainGroup_WhoAmended_nt_username"        DEFAULT CURRENT_USER,
        "WhoAmended_hostname"           VARCHAR(255) COLLATE dbo.case_insensitive NULL       CONSTRAINT "DF_TLSPartnerDomainGroup_WhoAmended_hostname"           DEFAULT dbo."HostName"(),
        
        CONSTRAINT "PK_TLSPartnerDomainGroup" PRIMARY KEY 
        (
            "TLSPartnerDomainGroupId"
        )
    );

    CREATE UNIQUE INDEX IF NOT EXISTS "IX_TLSPartnerDomainGroup_NU01" ON dbo."TLSPartnerDomainGroup" 
    (
        "CustomerId",
        "DomainGroupName"
    )
    INCLUDE
    (
    "TLSPartnerDomainGroupId",
    "IsSharedWithChildCustomers"
    ) ;
    