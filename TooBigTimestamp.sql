CREATE TABLE IF NOT EXISTS dbo."TooBigTimestamp"
(
    "CustomerId"        INTEGER   NOT NULL,
    "DomainId"          INTEGER       NULL,
    "LockingTimestamp"  TIMESTAMP NOT NULL 
);

CREATE  UNIQUE INDEX IF NOT EXISTS "IX_TooBigTimestamp_CU01" ON dbo."TooBigTimestamp"
(
    "CustomerId", 
    "DomainId" ASC NULLS FIRST
);
