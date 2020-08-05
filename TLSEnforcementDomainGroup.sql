
CREATE TABLE IF NOT EXISTS dbo."TLSEnforcementDomainGroup"
( 
     "TLSEnforcementId"            INTEGER                                    NOT NULL,
     "TLSPartnerDomainGroupId"     INTEGER                                    NOT NULL,
     "DateCreated"                 TIMESTAMP(3)                               NOT NULL  CONSTRAINT "DF_TLSEnforcementDomainGroup_DateCreated"            DEFAULT LOCALTIMESTAMP,
     "DateAmended"                 TIMESTAMP(3)                               NOT NULL  CONSTRAINT "DF_TLSEnforcementDomainGroup_DateAmended"            DEFAULT LOCALTIMESTAMP, 
     "WhoAmended_nt_username"      VARCHAR(255) COLLATE dbo.case_insensitive      NULL  CONSTRAINT "DF_TLSEnforcementDomainGroup_WhoAmended_nt_username" DEFAULT CURRENT_USER,
     "WhoAmended_hostname"         VARCHAR(255) COLLATE dbo.case_insensitive      NULL  CONSTRAINT "DF_TLSEnforcementDomainGroup_WhoAmended_hostname"    DEFAULT dbo."HostName"(), 

     CONSTRAINT "PK_TLSEnforcementDomainGroup" PRIMARY KEY 
      (
          "TLSEnforcementId",
          "TLSPartnerDomainGroupId"
      )
    ) ;
 
 CREATE  INDEX IF NOT EXISTS "IX_TLSEnforcementDomainGroup_NC01" ON dbo."TLSEnforcementDomainGroup"
    ( 
        "TLSPartnerDomainGroupId"
    ) ;
