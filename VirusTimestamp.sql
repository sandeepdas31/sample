CREATE TABLE IF NOT EXISTS dbo."VirusTimestamp"
(   
    "CustomerId"          INTEGER            NOT NULL,
    "DomainId"            INTEGER                NULL,
    "LockingTimestamp"    TIMESTAMP(3)       NOT NULL 
);

CREATE  UNIQUE   INDEX IF NOT EXISTS "IX_VirusTimestamp_CU01" ON dbo."VirusTimestamp"
(
    "CustomerId", 
    "DomainId"
    );