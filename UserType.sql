CREATE TABLE IF NOT EXISTS dbo."UserType"
(   
    "UserTypeId"           INTEGER                                  NOT NULL,
    "UserTypeCode"         CHAR(1)     COLLATE dbo.case_insensitive NOT NULL,
    "UserTypeDescription"  VARCHAR(50) COLLATE dbo.case_insensitive NOT NULL,
    
    CONSTRAINT "PK_UserType" PRIMARY KEY
    (
        "UserTypeId"
        )
);

CREATE UNIQUE INDEX IF NOT EXISTS "IX_UserType_NU01" ON dbo."UserType"
 (
     "UserTypeCode"
     );