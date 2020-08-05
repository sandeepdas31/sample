CREATE TABLE IF NOT EXISTS dbo."VirusPen"
(   
    "PenId"                      INTEGER                                     NOT NULL GENERATED ALWAYS AS IDENTITY,
    "DisplayName"                VARCHAR(30)  COLLATE dbo.case_insensitive   NOT NULL,
    "HostName"                   VARCHAR(255) COLLATE dbo.case_insensitive   NOT NULL,
    "IPAddress"                  CHAR(15)     COLLATE dbo.case_insensitive   NOT NULL,
    "Description"                VARCHAR(255) COLLATE dbo.case_insensitive       NULL,
    "DateCreated"                TIMESTAMP(3)                                NOT NULL,
    "DateAmended"                TIMESTAMP(3)                                NOT NULL,
    "DateDeleted"                TIMESTAMP(3)                                NOT NULL,
    "WhoAmended_nt_username"     VARCHAR(255) COLLATE dbo.case_insensitive   NOT NULL,
    "WhoAmended_hostname"        VARCHAR(255) COLLATE dbo.case_insensitive   NOT NULL,
    CONSTRAINT "PK_VirusPen" PRIMARY KEY  
    (
        "PenId"
    )
);

CREATE UNIQUE INDEX  IF NOT EXISTS "IX_VirusPen_NU01" on dbo."VirusPen"
(
    "DisplayName",
    "DateDeleted"
    
    );