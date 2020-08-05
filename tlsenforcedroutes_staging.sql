CREATE TABLE IF NOT EXISTS dbo."tlsenforcedroutes_staging"
(      
    "configdomain"              VARCHAR(255) COLLATE dbo.case_insensitive      NOT NULL, 
    "senderdomain"              VARCHAR(255) COLLATE dbo.case_insensitive      NOT NULL,
    "recipientdomain"           VARCHAR(255) COLLATE dbo.case_insensitive      NOT NULL,
    "tlsoption"                 VARCHAR(50)  COLLATE dbo.case_insensitive          NULL, 
    "sequence"                  INTEGER                                        NOT NULL,

     CONSTRAINT "PK_tlsenforcedroutes_staging" PRIMARY KEY 
     (
        "configdomain",
         "sequence"
     )
);

CREATE  INDEX IF NOT EXISTS "ix_tlsenforcedroutes_staging_nc01" ON dbo."tlsenforcedroutes_staging" 
 (
         "recipientdomain"
 ) 
 INCLUDE 
 (
   "configdomain",
   "senderdomain",
   "tlsoption" 
 );

