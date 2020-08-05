CREATE TABLE IF NOT EXISTS dbo."UnidentifiedUser"
(
    "UnidentifiedUserId"              INTEGER GENERATED ALWAYS AS IDENTITY       NOT NULL ,
    "UnidentifiedUserBatchId"         INTEGER                                    NOT NULL,
    "UnidentifiedUserAccountTypeId"   INTEGER                                    NOT NULL,
    "Name"                            VARCHAR(255) COLLATE dbo.case_insensitive      NULL,
    "Account"                         VARCHAR(255) COLLATE dbo.case_insensitive      NULL,
    "IsHidden"                        BOOLEAN                                    NOT NULL CONSTRAINT "DF_UnidentifiedUser_IsHidden" DEFAULT FALSE,
    "DateFirstSeen"                   TIMESTAMP(3)                               NOT NULL,
    "DateLastSeen"                    TIMESTAMP(3)                               NOT NULL,
    
    CONSTRAINT "PK_UnidentifiedUser" PRIMARY KEY  
    (
        "UnidentifiedUserId"
    )
);

CREATE INDEX  IF NOT EXISTS "IX_UnidentifiedUser_CL01" on dbo."UnidentifiedUser"
( 
    "UnidentifiedUserBatchId"
);