CREATE TABLE IF NOT EXISTS dbo."tlsenforcedroutes_PD_group_staging"
( 
  "customerid"       INTEGER                                    NOT NULL, 
  "partnerdomain"    VARCHAR(255) COLLATE dbo.case_insensitive  NOT NULL,
  "TLSToPartner"     SMALLINT                                       NULL, 
  "TLSFromPartner"   SMALLINT                                       NULL, 
  "stagingGroupId"   INTEGER                                        NULL,
  "IsPBESubdomain"   BOOLEAN                                    NOT NULL CONSTRAINT "DF_tlsenforcedroutes_PD_group_staging_IsPBESubdomain" DEFAULT FALSE,
 CONSTRAINT "PK_tlsenforcedroutes_PD_group_staging" PRIMARY KEY 
  (
    "customerid", 
    "partnerdomain"
  ) 
);
