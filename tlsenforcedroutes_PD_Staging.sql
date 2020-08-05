CREATE TABLE IF NOT EXISTS dbo."tlsenforcedroutes_PD_Staging" 
(   
    "configdomain"            VARCHAR(255) COLLATE dbo.case_insensitive         NOT NULL, 
    "domain"                  VARCHAR(255) COLLATE dbo.case_insensitive         NOT NULL, 
    "partnerdomain"           VARCHAR(255) COLLATE dbo.case_insensitive         NOT NULL, 
    "TLSToPartner"            SMALLINT                                              NULL, 
    "TLSFromPartner"          SMALLINT                                              NULL,
    "reversePdomain"          VARCHAR(255) COLLATE dbo.case_insensitive         NOT NULL,
    "ActualCustomerId"        INTEGER                                           NOT NULL,
    "IsPBESubdomain"          BOOLEAN                                           NOT NULL CONSTRAINT "DF_tlsenforcedroutes_PD_Staging_IsPBESubdomain" DEFAULT (FALSE),
    "ActualTLSToPartner"      SMALLINT                                              NULL, 
    "ActualTLSFromPartner"    SMALLINT                                              NULL, 

    CONSTRAINT "PK_tlsenforcedroutes_PD_Staging" PRIMARY KEY 
    (
     "configdomain", 
     "domain", 
     "partnerdomain"
     )
);

CREATE INDEX IF NOT EXISTS "ix_tlsenforcedroutes_PD_Staging_nc01" ON dbo."tlsenforcedroutes_PD_Staging" 
 (
     "TLSToPartner" ASC NULLS FIRST,
     "TLSFromPartner" ASC NULLS FIRST
 )
INCLUDE 
( 
   "configdomain",
  "partnerdomain",
  "reversePdomain"
);   

CREATE INDEX IF NOT EXISTS "ix_tlsenforcedroutes_PD_Staging_nc02" ON dbo."tlsenforcedroutes_PD_Staging" 
  (
      "partnerdomain", 
      "ActualCustomerId"
  )
  INCLUDE 
  (
      "configdomain",
      "TLSToPartner",
      "TLSFromPartner"
  );    
