CREATE TABLE  IF NOT EXISTS dbo."tlsenforcedroutes_subdom_staging"
(         
  "configdomain"             VARCHAR(255) COLLATE dbo.case_insensitive         NOT NULL,
  "domain"                   VARCHAR(255) COLLATE dbo.case_insensitive         NOT NULL,
  "subdomain"                VARCHAR(255) COLLATE dbo.case_insensitive         NOT NULL,

  CONSTRAINT "PK_tlsenforcedroutes_subdom_staging" PRIMARY KEY 
  (
    "configdomain",
     "domain", 
     "subdomain"
  )
);
