CREATE TABLE IF NOT EXISTS dbo."UnidentifiedUserAccountType"
(
    "UnidentifiedUserAccountTypeId"        INTEGER                                     NOT NULL,
    "Type"                                 VARCHAR(25) COLLATE dbo.case_insensitive    NOT NULL,
    CONSTRAINT "PK_UnidentifiedUserAccountType" PRIMARY KEY  
    (
        "UnidentifiedUserAccountTypeId"
    )
);