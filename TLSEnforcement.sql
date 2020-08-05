CREATE TABLE IF NOT EXISTS dbo."TLSEnforcement"
(          
    "TLSEnforcementId"                    INTEGER GENERATED ALWAYS AS IDENTITY        NOT NULL,
    "TLSId"                               INTEGER                                     NOT NULL,
    "IsEnabled"                           BOOLEAN                                     NOT NULL CONSTRAINT "DF_TLSEnforcement_IsEnabled"                 DEFAULT (FALSE),
    "EnforceInbound"                      SMALLINT                                    NOT NULL CONSTRAINT "DF_TLSEnforcement_EnforceInbound"            DEFAULT (0),
    "EnforceOutbound"                     SMALLINT                                    NOT NULL CONSTRAINT "DF_TLSEnforcement_EnforceOutbound"           DEFAULT (0),
    "TLSEnforcementTypeId"                SMALLINT                                    NOT NULL, 
    "DateCreated"                         TIMESTAMP(3)                                NOT NULL CONSTRAINT "DF_TLSEnforcement_DateCreated"               DEFAULT LOCALTIMESTAMP,
    "DateAmended"                         TIMESTAMP(3)                                NOT NULL CONSTRAINT "DF_TLSEnforcement_DateAmended"               DEFAULT LOCALTIMESTAMP,          
    "WhoAmended_nt_username"              VARCHAR(255) COLLATE dbo.case_insensitive       NULL CONSTRAINT "DF_TLSEnforcement_WhoAmended_nt_username"    DEFAULT CURRENT_USER,
    "WhoAmended_hostname"                 VARCHAR(255) COLLATE dbo.case_insensitive       NULL CONSTRAINT "DF_TLSEnforcement_WhoAmended_hostname"       DEFAULT dbo."HostName"(),                              
     
   CONSTRAINT "PK_TLSEnforcement" PRIMARY KEY 
   (
       "TLSEnforcementId"
   )
);

CREATE INDEX IF NOT EXISTS "IX_TLSEnforcement_NC01" ON dbo."TLSEnforcement" 
 (
  "TLSId"
 ) WITH  (FILLFACTOR = 80);
